import struct, sys, zlib
def parse(path):
    d = open(path,'rb').read()
    (ident, typ, mach, ver, entry, phoff, shoff, flags, ehsize, phentsize, phnum, shentsize, shnum, shstrndx) = struct.unpack('>16sHHIIIIIHHHHHH', d[:52])
    print(f"== {path}  size={len(d)}  type=0x{typ:04x} machine=0x{mach:x} entry=0x{entry:08x} shoff=0x{shoff:x} shnum={shnum} shstrndx={shstrndx}  OSABI={ident[7]} ABIver={ident[8]}")
    secs=[]
    for i in range(shnum):
        o=shoff+i*shentsize
        name,stype,sflags,addr,off,size,link,info,align,entsize = struct.unpack('>IIIIIIIIII', d[o:o+40])
        secs.append(dict(i=i,name=name,type=stype,flags=sflags,addr=addr,off=off,size=size,link=link,info=info,align=align,entsize=entsize))
    def rawsec(s):
        raw=d[s['off']:s['off']+s['size']]
        if s['flags'] & 0x08000000 and s['type']!=8:
            usz=struct.unpack('>I',raw[:4])[0]
            return zlib.decompress(raw[4:]), usz
        return raw, None
    shstr,_ = rawsec(secs[shstrndx])
    for s in secs:
        n=shstr[s['name']:shstr.index(b'\0',s['name'])].decode()
        s['sname']=n
    print(f"{'#':>3} {'name':<16}{'type':>10}{'flags':>11}{'addr':>10}{'off':>9}{'size(file)':>11}{'size(mem)':>11}")
    for s in secs:
        mem = s['size']
        comp = ''
        if s['flags'] & 0x08000000 and s['type']!=8 and s['size']>=4:
            try:
                dec,usz=rawsec(s); mem=len(dec); comp='Z'
            except Exception as e: comp='Z?'
        print(f"{s['i']:>3} {s['sname']:<16}{s['type']:>#10x}{s['flags']:>#11x}{s['addr']:>#10x}{s['off']:>#9x}{s['size']:>11}{mem:>11} {comp}")
    return d,secs,rawsec
if __name__=='__main__':
    parse(sys.argv[1])
