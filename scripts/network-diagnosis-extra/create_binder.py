import os, struct, fcntl

# _IOWR('b', 1, struct binderfs_device{char name[256];__u32 major;__u32 minor;}=264 bytes)
BINDER_CTL_ADD = (3 << 30) | (264 << 16) | (0x62 << 8) | 1

for name in ["binder", "hwbinder", "vndbinder"]:
    try:
        fd = os.open("/dev/binderfs/binder-control", os.O_RDWR)
        buf = bytearray(264)
        nb = name.encode()
        buf[:len(nb)] = nb
        fcntl.ioctl(fd, BINDER_CTL_ADD, buf)
        major = struct.unpack_from("<I", buf, 256)[0]
        minor = struct.unpack_from("<I", buf, 260)[0]
        os.close(fd)
        print(f"OK: /dev/binderfs/{name} major={major} minor={minor}")
    except Exception as e:
        print(f"FAIL {name}: {e}")
