.class public Lcom/huawei/hms/maps/utils/DynamicUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/huawei/hms/feature/dynamic/DynamicModule; = null

.field private static b:I = 0x0

.field private static c:Z = false

.field private static d:Z = false

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 76

    const/16 v0, 0x29f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CRR-UL20"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TAG-CL00"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TIT-CL10"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "KIW-AL10"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "KIW-TL00H"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "TAG-TL00"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "CRR-CL20"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "KIW-TL00"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "KIW-UL00"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "KIW-CL00"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "TAG-AL00"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "NXT-AL10"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "NXT-TL00"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "NXT-CL00"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "NXT-DL00"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "KIW-AL20"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "VNS-AL00"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "VNS-CL00"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "EVA-AL00"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "EVA-AL10"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "EVA-CL00"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "EVA-DL00"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "EVA-TL00"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "PLE-703L"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "KNT-AL10"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "VNS-TL00"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "NEM-UL10"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "NEM-TL00H"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "KNT-AL20"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "CAM-TL00H"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "KNT-TL10"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "VIE-AL10"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "NEM-TL00"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "VNS-DL00"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "CAM-AL00"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "CAM-CL00"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "KNT-UL10"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "CAM-UL00"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "PLE-703LT"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "CAM-TL00"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "FRD-AL00"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "FRD-AL10"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "NEM-AL10"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "CUN-TL00"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "EDI-AL10"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "FRD-DL00"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "FRD-TL00"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "EDI-DL00"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "MLA-AL00"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "MLA-AL10"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "CUN-AL00"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "MLA-TL00"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "MLA-UL00"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "NCE-AL00"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "NCE-AL10"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "BGO-DL09"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v2, "CAZ-AL00"

    const/16 v3, 0x38

    aput-object v2, v0, v3

    const-string v2, "CAZ-AL10"

    const/16 v3, 0x39

    aput-object v2, v0, v3

    const-string v2, "NCE-TL00"

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    const-string v2, "CAZ-TL10"

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    const-string v2, "NTS-AL00"

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    const-string v2, "BLN-AL00"

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "MLA-TL10"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "BLN-TL10"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "MHA-AL00"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "MHA-TL00"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "DIG-AL00"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "BLN-TL00"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "DIG-TL10"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "CAZ-TL20"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "LON-AL00"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "PRA-AL00"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "BLN-AL20"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "PRA-TL10"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v2, "PRA-TL00"

    const/16 v3, 0x4b

    aput-object v2, v0, v3

    const-string v2, "PRA-AL00x"

    const/16 v3, 0x4c

    aput-object v2, v0, v3

    const-string v2, "NCE-TL10"

    const/16 v3, 0x4d

    aput-object v2, v0, v3

    const-string v2, "WAS-AL00"

    const/16 v3, 0x4e

    aput-object v2, v0, v3

    const-string v2, "WAS-TL10"

    const/16 v3, 0x4f

    aput-object v2, v0, v3

    const-string v2, "DUK-AL20"

    const/16 v3, 0x50

    aput-object v2, v0, v3

    const-string v2, "DUK-TL30"

    const/16 v3, 0x51

    aput-object v2, v0, v3

    const-string v2, "VTR-TL00"

    const/16 v3, 0x52

    aput-object v2, v0, v3

    const-string v2, "VTR-AL00"

    const/16 v3, 0x53

    aput-object v2, v0, v3

    const-string v2, "VKY-AL00"

    const/16 v3, 0x54

    aput-object v2, v0, v3

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "KOB-L09"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "TRT-TL10"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "TRT-AL00"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "BLN-AL30"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "BLN-AL40"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "AGS-L09"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v2, "VKY-TL00"

    const/16 v3, 0x5c

    aput-object v2, v0, v3

    const-string v2, "TRT-AL00A"

    const/16 v3, 0x5d

    aput-object v2, v0, v3

    const-string v2, "SLA-AL00"

    const/16 v3, 0x5e

    aput-object v2, v0, v3

    const-string v2, "BAH-AL00"

    const/16 v3, 0x5f

    aput-object v2, v0, v3

    const-string v2, "BAC-AL00"

    const/16 v3, 0x60

    aput-object v2, v0, v3

    const-string v2, "SLA-TL10"

    const/16 v3, 0x61

    aput-object v2, v0, v3

    const-string v2, "BAC-TL00"

    const/16 v3, 0x62

    aput-object v2, v0, v3

    const-string v2, "TRT-TL10A"

    const/16 v3, 0x63

    aput-object v2, v0, v3

    const-string v2, "DLI-AL10"

    const/16 v3, 0x64

    aput-object v2, v0, v3

    const-string v2, "DLI-TL20"

    const/16 v3, 0x65

    aput-object v2, v0, v3

    const-string v2, "BZA-L00"

    const/16 v3, 0x66

    aput-object v2, v0, v3

    const-string v3, "BZK-L00"

    const/16 v4, 0x67

    aput-object v3, v0, v4

    const-string v3, "STF-AL10"

    const/16 v4, 0x68

    aput-object v3, v0, v4

    const-string v3, "STF-AL00"

    const/16 v4, 0x69

    aput-object v3, v0, v4

    const-string v3, "STF-TL10"

    const/16 v4, 0x6a

    aput-object v3, v0, v4

    const-string v3, "CPN-AL00"

    const/16 v4, 0x6b

    aput-object v3, v0, v4

    const-string v3, "PIC-AL00"

    const/16 v4, 0x6c

    aput-object v3, v0, v4

    const-string v3, "PIC-TL00"

    const/16 v4, 0x6d

    aput-object v3, v0, v4

    const-string v3, "MYA-AL10"

    const/16 v4, 0x6e

    aput-object v3, v0, v4

    const-string v3, "MYA-TL10"

    const/16 v4, 0x6f

    aput-object v3, v0, v4

    const-string v3, "K2-G00"

    const/16 v4, 0x70

    aput-object v3, v0, v4

    const-string v3, "JMM-AL00"

    const/16 v4, 0x71

    aput-object v3, v0, v4

    const-string v3, "BG2-U01"

    const/16 v4, 0x72

    aput-object v3, v0, v4

    const-string v3, "JMM-TL00"

    const/16 v4, 0x73

    aput-object v3, v0, v4

    const-string v3, "JMM-AL10"

    const/16 v4, 0x74

    aput-object v3, v0, v4

    const-string v3, "JMM-TL10"

    const/16 v4, 0x75

    aput-object v3, v0, v4

    const-string v3, "HDN-L09"

    const/16 v4, 0x76

    aput-object v3, v0, v4

    const-string v3, "RNE-AL00"

    const/16 v4, 0x77

    aput-object v3, v0, v4

    const-string v3, "BND-AL10"

    const/16 v4, 0x78

    aput-object v3, v0, v4

    const-string v3, "BND-TL10"

    const/16 v4, 0x79

    aput-object v3, v0, v4

    const-string v3, "LEO-DLXXU"

    const/16 v4, 0x7a

    aput-object v3, v0, v4

    const-string v4, "ALP-TL00"

    const/16 v5, 0x7b

    aput-object v4, v0, v5

    const-string v4, "ALP-AL00"

    const/16 v5, 0x7c

    aput-object v4, v0, v5

    const-string v4, "BLA-TL00"

    const/16 v5, 0x7d

    aput-object v4, v0, v5

    const-string v4, "BLA-AL00"

    const/16 v5, 0x7e

    aput-object v4, v0, v5

    const-string v4, "HWI-AL00"

    const/16 v5, 0x7f

    aput-object v4, v0, v5

    const-string v4, "HWI-TL00"

    const/16 v5, 0x80

    aput-object v4, v0, v5

    const-string v4, "LLD-AL10"

    const/16 v5, 0x81

    aput-object v4, v0, v5

    const-string v4, "LLD-AL00"

    const/16 v5, 0x82

    aput-object v4, v0, v5

    const-string v4, "BKL-AL20"

    const/16 v5, 0x83

    aput-object v4, v0, v5

    const-string v4, "BKL-AL00"

    const/16 v5, 0x84

    aput-object v4, v0, v5

    const-string v4, "BKL-TL10"

    const/16 v5, 0x85

    aput-object v4, v0, v5

    const-string v4, "FIG-AL00"

    const/16 v5, 0x86

    aput-object v4, v0, v5

    const-string v4, "FIG-AL10"

    const/16 v5, 0x87

    aput-object v4, v0, v5

    const-string v4, "FIG-TL00"

    const/16 v5, 0x88

    aput-object v4, v0, v5

    const-string v4, "FIG-TL10"

    const/16 v5, 0x89

    aput-object v4, v0, v5

    const-string v4, "LLD-TL10"

    const/16 v5, 0x8a

    aput-object v4, v0, v5

    const-string v4, "BND-AL00"

    const/16 v5, 0x8b

    aput-object v4, v0, v5

    const-string v4, "SHT-AL09"

    const/16 v5, 0x8c

    aput-object v4, v0, v5

    const-string v4, "CMR-AL09"

    const/16 v5, 0x8d

    aput-object v4, v0, v5

    const-string v4, "CMR-AL19"

    const/16 v5, 0x8e

    aput-object v4, v0, v5

    const-string v4, "WS5280"

    const/16 v5, 0x8f

    aput-object v4, v0, v5

    const-string v4, "LND-AL30"

    const/16 v5, 0x90

    aput-object v4, v0, v5

    const-string v4, "LND-AL40"

    const/16 v5, 0x91

    aput-object v4, v0, v5

    const-string v4, "LDN-AL00"

    const/16 v5, 0x92

    aput-object v4, v0, v5

    const-string v4, "AUM-TL00"

    const/16 v5, 0x93

    aput-object v4, v0, v5

    const-string v4, "AUM-AL20"

    const/16 v5, 0x94

    aput-object v4, v0, v5

    const-string v4, "AUM-AL00"

    const/16 v5, 0x95

    aput-object v4, v0, v5

    const-string v4, "LDN-TL00"

    const/16 v5, 0x96

    aput-object v4, v0, v5

    const-string v4, "LND-TL40"

    const/16 v5, 0x97

    aput-object v4, v0, v5

    const-string v4, "LND-TL30"

    const/16 v5, 0x98

    aput-object v4, v0, v5

    const-string v4, "AUM-TL20"

    const/16 v5, 0x99

    aput-object v4, v0, v5

    const-string v4, "FLA-AL00"

    const/16 v5, 0x9a

    aput-object v4, v0, v5

    const-string v4, "FLA-TL10"

    const/16 v5, 0x9b

    aput-object v4, v0, v5

    const-string v4, "LDN-TL20"

    const/16 v5, 0x9c

    aput-object v4, v0, v5

    const-string v4, "LDN-AL20"

    const/16 v5, 0x9d

    aput-object v4, v0, v5

    const-string v4, "EML-TL00"

    const/16 v5, 0x9e

    aput-object v4, v0, v5

    const-string v4, "EML-AL00"

    const/16 v5, 0x9f

    aput-object v4, v0, v5

    const-string v4, "ATU-AL10"

    const/16 v5, 0xa0

    aput-object v4, v0, v5

    const-string v4, "LDN-AL10"

    const/16 v5, 0xa1

    aput-object v4, v0, v5

    const-string v4, "LDN-TL10"

    const/16 v5, 0xa2

    aput-object v4, v0, v5

    const-string v4, "FLA-TL00"

    const/16 v5, 0xa3

    aput-object v4, v0, v5

    const-string v4, "FLA-AL10"

    const/16 v5, 0xa4

    aput-object v4, v0, v5

    const-string v4, "CLT-TL00"

    const/16 v5, 0xa5

    aput-object v4, v0, v5

    const-string v4, "CLT-AL00"

    const/16 v5, 0xa6

    aput-object v4, v0, v5

    const-string v4, "FLA-AL20"

    const/16 v5, 0xa7

    aput-object v4, v0, v5

    const-string v4, "ATU-TL10"

    const/16 v5, 0xa8

    aput-object v4, v0, v5

    const-string v4, "ANE-AL00"

    const/16 v5, 0xa9

    aput-object v4, v0, v5

    const-string v4, "ANE-TL00"

    const/16 v5, 0xaa

    aput-object v4, v0, v5

    const-string v4, "NEO-AL00"

    const/16 v5, 0xab

    aput-object v4, v0, v5

    const-string v4, "CLT-AL01"

    const/16 v5, 0xac

    aput-object v4, v0, v5

    const-string v4, "CLT-TL01"

    const/16 v5, 0xad

    aput-object v4, v0, v5

    const-string v4, "COL-TL10"

    const/16 v5, 0xae

    aput-object v4, v0, v5

    const-string v4, "COL-AL00"

    const/16 v5, 0xaf

    aput-object v4, v0, v5

    const-string v4, "COL-AL10"

    const/16 v5, 0xb0

    aput-object v4, v0, v5

    const-string v4, "COL-TL00"

    const/16 v5, 0xb1

    aput-object v4, v0, v5

    const/16 v4, 0xb2

    aput-object v3, v0, v4

    const-string v4, "DUA-AL00"

    const/16 v5, 0xb3

    aput-object v4, v0, v5

    const-string v4, "DUA-TL00"

    const/16 v5, 0xb4

    aput-object v4, v0, v5

    const-string v4, "DRA-AL00"

    const/16 v5, 0xb5

    aput-object v4, v0, v5

    const-string v4, "DRA-TL00"

    const/16 v5, 0xb6

    aput-object v4, v0, v5

    const-string v4, "LLD-AL20"

    const/16 v5, 0xb7

    aput-object v4, v0, v5

    const-string v4, "LLD-AL30"

    const/16 v5, 0xb8

    aput-object v4, v0, v5

    const-string v4, "MON-AL19B"

    const/16 v5, 0xb9

    aput-object v4, v0, v5

    const-string v4, "LEO-DL00E"

    const/16 v5, 0xba

    aput-object v4, v0, v5

    const-string v5, "COR-TL10"

    const/16 v6, 0xbb

    aput-object v5, v0, v6

    const-string v5, "COR-AL10"

    const/16 v6, 0xbc

    aput-object v5, v0, v6

    const-string v5, "COR-AL00"

    const/16 v6, 0xbd

    aput-object v5, v0, v6

    const-string v5, "PAR-TL00"

    const/16 v6, 0xbe

    aput-object v5, v0, v6

    const-string v5, "PAR-AL00"

    const/16 v6, 0xbf

    aput-object v5, v0, v6

    const-string v5, "BZT-AL00"

    const/16 v6, 0xc0

    aput-object v5, v0, v6

    const-string v6, "BZT-AL10"

    const/16 v7, 0xc1

    aput-object v6, v0, v7

    const-string v7, "INE-TL00"

    const/16 v8, 0xc2

    aput-object v7, v0, v8

    const-string v7, "INE-AL00"

    const/16 v8, 0xc3

    aput-object v7, v0, v8

    const-string v7, "CLT-AL00l"

    const/16 v8, 0xc4

    aput-object v7, v0, v8

    const-string v7, "BAH2-AL00"

    const/16 v8, 0xc5

    aput-object v7, v0, v8

    const-string v7, "RVL-AL09"

    const/16 v8, 0xc6

    aput-object v7, v0, v8

    const-string v8, "BAH2-AL10"

    const/16 v9, 0xc7

    aput-object v8, v0, v9

    const-string v9, "SNE-AL00"

    const/16 v10, 0xc8

    aput-object v9, v0, v10

    const-string v9, "SIM-AL00"

    const/16 v10, 0xc9

    aput-object v9, v0, v10

    const-string v10, "ARE-AL00"

    const/16 v11, 0xca

    aput-object v10, v0, v11

    const-string v10, "AGS2-AL00"

    const/16 v11, 0xcb

    aput-object v10, v0, v11

    const-string v11, "AGS2-AL00HN"

    const/16 v12, 0xcc

    aput-object v11, v0, v12

    const-string v12, "JSN-AL00"

    const/16 v13, 0xcd

    aput-object v12, v0, v13

    const-string v12, "JSN-AL00a"

    const/16 v13, 0xce

    aput-object v12, v0, v13

    const-string v13, "JSN-TL00"

    const/16 v14, 0xcf

    aput-object v13, v0, v14

    const-string v13, "JKM-AL00"

    const/16 v14, 0xd0

    aput-object v13, v0, v14

    const-string v13, "BKK-AL10"

    const/16 v14, 0xd1

    aput-object v13, v0, v14

    const-string v13, "HMA-AL00"

    const/16 v14, 0xd2

    aput-object v13, v0, v14

    const-string v14, "HMA-TL00"

    const/16 v15, 0xd3

    aput-object v14, v0, v15

    const-string v14, "BKK-AL00"

    const/16 v15, 0xd4

    aput-object v14, v0, v15

    const-string v14, "JKM-TL00"

    const/16 v15, 0xd5

    aput-object v14, v0, v15

    const-string v14, "LYA-TL00"

    const/16 v15, 0xd6

    aput-object v14, v0, v15

    const-string v14, "LYA-AL00"

    const/16 v15, 0xd7

    aput-object v14, v0, v15

    const-string v15, "BKK-TL00"

    const/16 v16, 0xd8

    aput-object v15, v0, v16

    const-string v15, "ARE-TL00"

    const/16 v16, 0xd9

    aput-object v15, v0, v16

    const-string v15, "ARE-AL10"

    const/16 v16, 0xda

    aput-object v15, v0, v16

    const-string v15, "JKM-AL00a"

    const/16 v16, 0xdb

    aput-object v15, v0, v16

    const/16 v15, 0xdc

    aput-object v3, v0, v15

    const-string v15, "LYA-AL10"

    const/16 v16, 0xdd

    aput-object v15, v0, v16

    const-string v16, "LYA-AL00P"

    const/16 v17, 0xde

    aput-object v16, v0, v17

    const-string v16, "EVR-AL00"

    const/16 v17, 0xdf

    aput-object v16, v0, v17

    const-string v16, "ARS-AL00"

    const/16 v17, 0xe0

    aput-object v16, v0, v17

    const-string v16, "EVR-TL00"

    const/16 v17, 0xe1

    aput-object v16, v0, v17

    const-string v16, "TNY-AL00"

    const/16 v17, 0xe2

    aput-object v16, v0, v17

    const-string v16, "TNY-TL00"

    const/16 v17, 0xe3

    aput-object v16, v0, v17

    const-string v16, "ARS-TL00"

    const/16 v17, 0xe4

    aput-object v16, v0, v17

    const-string v16, "HRY-AL00"

    const/16 v17, 0xe5

    aput-object v16, v0, v17

    const-string v16, "HRY-TL00"

    const/16 v17, 0xe6

    aput-object v16, v0, v17

    const-string v16, "HRY-AL00a"

    const/16 v17, 0xe7

    aput-object v16, v0, v17

    const-string v17, "JKM-AL00b"

    const/16 v18, 0xe8

    aput-object v17, v0, v18

    const-string v18, "DUB-TL00"

    const/16 v19, 0xe9

    aput-object v18, v0, v19

    const-string v19, "DUB-AL00"

    const/16 v20, 0xea

    aput-object v19, v0, v20

    const-string v20, "DUB-AL20"

    const/16 v21, 0xeb

    aput-object v20, v0, v21

    const-string v20, "INE-AL00r"

    const/16 v21, 0xec

    aput-object v20, v0, v21

    const-string v20, "JAT-TL00"

    const/16 v21, 0xed

    aput-object v20, v0, v21

    const-string v21, "JAT-AL00"

    const/16 v22, 0xee

    aput-object v21, v0, v22

    const/16 v22, 0xef

    aput-object v4, v0, v22

    const-string v22, "VCE-AL00"

    const/16 v23, 0xf0

    aput-object v22, v0, v23

    const-string v22, "VCE-TL00"

    const/16 v23, 0xf1

    aput-object v22, v0, v23

    const-string v22, "HDL-AL09"

    const/16 v23, 0xf2

    aput-object v22, v0, v23

    const-string v23, "PCT-AL10"

    const/16 v24, 0xf3

    aput-object v23, v0, v24

    const-string v23, "PCT-TL10"

    const/16 v24, 0xf4

    aput-object v23, v0, v24

    const-string v23, "Elf-G00"

    const/16 v24, 0xf5

    aput-object v23, v0, v24

    const-string v23, "MRD-AL00"

    const/16 v24, 0xf6

    aput-object v23, v0, v24

    const-string v24, "MRD-TL00"

    const/16 v25, 0xf7

    aput-object v24, v0, v25

    const-string v25, "POT-AL00a"

    const/16 v26, 0xf8

    aput-object v25, v0, v26

    const-string v26, "POT-AL00"

    const/16 v27, 0xf9

    aput-object v26, v0, v27

    const-string v26, "POT-TL00a"

    const/16 v27, 0xfa

    aput-object v26, v0, v27

    const-string v26, "MAR-AL00"

    const/16 v27, 0xfb

    aput-object v26, v0, v27

    const-string v27, "MAR-TL00"

    const/16 v28, 0xfc

    aput-object v27, v0, v28

    const-string v28, "JDN2-AL00HN"

    const/16 v29, 0xfd

    aput-object v28, v0, v29

    const-string v29, "KSA-AL00"

    const/16 v30, 0xfe

    aput-object v29, v0, v30

    const-string v30, "ELE-AL00"

    const/16 v31, 0xff

    aput-object v30, v0, v31

    const-string v31, "ELE-TL00"

    const/16 v32, 0x100

    aput-object v31, v0, v32

    const-string v32, "VOG-AL00"

    const/16 v33, 0x101

    aput-object v32, v0, v33

    const-string v33, "VOG-AL10"

    const/16 v34, 0x102

    aput-object v33, v0, v34

    const-string v34, "VOG-TL00"

    const/16 v35, 0x103

    aput-object v34, v0, v35

    const-string v34, "KSA-TL00"

    const/16 v35, 0x104

    aput-object v34, v0, v35

    const-string v35, "PAK-AL09"

    const/16 v36, 0x105

    aput-object v35, v0, v36

    const/16 v35, 0x106

    aput-object v3, v0, v35

    const/16 v35, 0x107

    aput-object v9, v0, v35

    const-string v35, "JDN2-AL00"

    const/16 v36, 0x108

    aput-object v35, v0, v36

    const-string v36, "DUB-AL00a"

    const/16 v37, 0x109

    aput-object v36, v0, v37

    const-string v37, "DUB-TL00a"

    const/16 v38, 0x10a

    aput-object v37, v0, v38

    const-string v38, "HRY-AL00Ta"

    const/16 v39, 0x10b

    aput-object v38, v0, v39

    const-string v39, "HRY-TL00T"

    const/16 v40, 0x10c

    aput-object v39, v0, v40

    const/16 v39, 0x10d

    aput-object v30, v0, v39

    const/16 v39, 0x10e

    aput-object v14, v0, v39

    const-string v14, "HRY-AL00T"

    const/16 v39, 0x10f

    aput-object v14, v0, v39

    const/16 v39, 0x110

    aput-object v32, v0, v39

    const/16 v39, 0x111

    aput-object v15, v0, v39

    const/16 v15, 0x112

    aput-object v33, v0, v15

    const/16 v15, 0x113

    aput-object v13, v0, v15

    const/16 v13, 0x114

    aput-object v4, v0, v13

    const-string v13, "YAL-AL00"

    const/16 v15, 0x115

    aput-object v13, v0, v15

    const/16 v15, 0x116

    aput-object v12, v0, v15

    const-string v12, "ALX-AL10"

    const/16 v15, 0x117

    aput-object v12, v0, v15

    const-string v12, "YAL-TL00"

    const/16 v15, 0x118

    aput-object v12, v0, v15

    const/16 v12, 0x119

    aput-object v17, v0, v12

    const/16 v12, 0x11a

    aput-object v23, v0, v12

    const/16 v12, 0x11b

    aput-object v26, v0, v12

    const/16 v12, 0x11c

    aput-object v21, v0, v12

    const/16 v12, 0x11d

    aput-object v19, v0, v12

    const/16 v12, 0x11e

    aput-object v36, v0, v12

    const/16 v12, 0x11f

    aput-object v37, v0, v12

    const/16 v12, 0x120

    aput-object v27, v0, v12

    const-string v12, "GLK-AL00"

    const/16 v15, 0x121

    aput-object v12, v0, v15

    const/16 v15, 0x122

    aput-object v5, v0, v15

    const/16 v5, 0x123

    aput-object v6, v0, v5

    const/16 v5, 0x124

    aput-object v8, v0, v5

    const-string v5, "GLK-TL00"

    const/16 v6, 0x125

    aput-object v5, v0, v6

    const-string v6, "SEA-AL10"

    const/16 v8, 0x126

    aput-object v6, v0, v8

    const-string v8, "SEA-TL10"

    const/16 v15, 0x127

    aput-object v8, v0, v15

    const-string v15, "SCM-AL09"

    const/16 v17, 0x128

    aput-object v15, v0, v17

    const/16 v15, 0x129

    aput-object v19, v0, v15

    const/16 v15, 0x12a

    aput-object v18, v0, v15

    const/16 v15, 0x12b

    aput-object v36, v0, v15

    const/16 v15, 0x12c

    aput-object v11, v0, v15

    const/16 v11, 0x12d

    aput-object v10, v0, v11

    const/16 v10, 0x12e

    aput-object v37, v0, v10

    const/16 v10, 0x12f

    aput-object v18, v0, v10

    const/16 v10, 0x130

    aput-object v19, v0, v10

    const-string v10, "YAL-AL10"

    const/16 v11, 0x131

    aput-object v10, v0, v11

    const-string v11, "VRD-AL09"

    const/16 v15, 0x132

    aput-object v11, v0, v15

    const-string v11, "HLK-AL10"

    const/16 v15, 0x133

    aput-object v11, v0, v15

    const-string v15, "YAL-TL10"

    const/16 v17, 0x134

    aput-object v15, v0, v17

    const/16 v15, 0x135

    aput-object v29, v0, v15

    const/16 v15, 0x136

    aput-object v34, v0, v15

    const-string v15, "SEA-AL00"

    const/16 v17, 0x137

    aput-object v15, v0, v17

    const-string v15, "CSN-AL00"

    const/16 v17, 0x138

    aput-object v15, v0, v17

    const-string v15, "B316-855"

    const/16 v17, 0x139

    aput-object v15, v0, v17

    const-string v15, "ELE-AL00m"

    const/16 v17, 0x13a

    aput-object v15, v0, v17

    const-string v15, "VOG-AL00m"

    const/16 v17, 0x13b

    aput-object v15, v0, v17

    const-string v15, "HLK-AL00"

    const/16 v17, 0x13c

    aput-object v15, v0, v17

    const-string v17, "SPN-AL00"

    const/16 v18, 0x13d

    aput-object v17, v0, v18

    const-string v17, "SPN-TL00"

    const/16 v18, 0x13e

    aput-object v17, v0, v18

    const/16 v17, 0x13f

    aput-object v21, v0, v17

    const/16 v17, 0x140

    aput-object v23, v0, v17

    const-string v17, "HLK-TL00"

    const/16 v18, 0x141

    aput-object v17, v0, v18

    const/16 v18, 0x142

    aput-object v12, v0, v18

    const/16 v12, 0x143

    aput-object v5, v0, v12

    const/16 v5, 0x144

    aput-object v6, v0, v5

    const-string v5, "VRD-AL10"

    const/16 v6, 0x145

    aput-object v5, v0, v6

    const-string v5, "EVR-AN00"

    const/16 v6, 0x146

    aput-object v5, v0, v6

    const-string v6, "POT-AL10"

    const/16 v12, 0x147

    aput-object v6, v0, v12

    const/16 v12, 0x148

    aput-object v8, v0, v12

    const-string v8, "SEA-TL00"

    const/16 v12, 0x149

    aput-object v8, v0, v12

    const/16 v8, 0x14a

    aput-object v13, v0, v8

    const/16 v8, 0x14b

    aput-object v35, v0, v8

    const-string v8, "JDN2-AL50"

    const/16 v12, 0x14c

    aput-object v8, v0, v12

    const/16 v8, 0x14d

    aput-object v13, v0, v8

    const-string v8, "H112-372"

    const/16 v12, 0x14e

    aput-object v8, v0, v12

    const-string v8, "TAH-AN00"

    const/16 v12, 0x14f

    aput-object v8, v0, v12

    const-string v12, "JDN2-AL50HN"

    const/16 v13, 0x150

    aput-object v12, v0, v13

    const/16 v12, 0x151

    aput-object v10, v0, v12

    const/16 v12, 0x152

    aput-object v20, v0, v12

    const/16 v12, 0x153

    aput-object v24, v0, v12

    const-string v12, "STK-AL00"

    const/16 v13, 0x154

    aput-object v12, v0, v13

    const-string v12, "STK-TL00"

    const/16 v13, 0x155

    aput-object v12, v0, v13

    const/16 v12, 0x156

    aput-object v28, v0, v12

    const/16 v12, 0x157

    aput-object v9, v0, v12

    const/16 v12, 0x158

    aput-object v3, v0, v12

    const/16 v12, 0x159

    aput-object v38, v0, v12

    const-string v12, "YAL-AL50"

    const/16 v13, 0x15a

    aput-object v12, v0, v13

    const/16 v12, 0x15b

    aput-object v22, v0, v12

    const/16 v12, 0x15c

    aput-object v10, v0, v12

    const-string v10, "YAL-TL50"

    const/16 v12, 0x15d

    aput-object v10, v0, v12

    const/16 v10, 0x15e

    aput-object v16, v0, v10

    const/16 v10, 0x15f

    aput-object v15, v0, v10

    const/16 v10, 0x160

    aput-object v11, v0, v10

    const/16 v10, 0x161

    aput-object v30, v0, v10

    const/16 v10, 0x162

    aput-object v14, v0, v10

    const/16 v10, 0x163

    aput-object v25, v0, v10

    const/16 v10, 0x164

    aput-object v7, v0, v10

    const/16 v7, 0x165

    aput-object v38, v0, v7

    const-string v7, "TAS-AL00"

    const/16 v10, 0x166

    aput-object v7, v0, v10

    const-string v7, "TAS-TL00"

    const/16 v10, 0x167

    aput-object v7, v0, v10

    const-string v7, "LIO-AL00"

    const/16 v10, 0x168

    aput-object v7, v0, v10

    const-string v7, "LIO-TL00"

    const/16 v10, 0x169

    aput-object v7, v0, v10

    const/16 v7, 0x16a

    aput-object v6, v0, v7

    const/16 v6, 0x16b

    aput-object v17, v0, v6

    const-string v6, "ASK-AL00x"

    const/16 v7, 0x16c

    aput-object v6, v0, v7

    const-string v7, "ASK-TL00x"

    const/16 v10, 0x16d

    aput-object v7, v0, v10

    const-string v10, "ELF-G10"

    const/16 v11, 0x16e

    aput-object v10, v0, v11

    const-string v10, "ELF-G00"

    const/16 v11, 0x16f

    aput-object v10, v0, v11

    const-string v10, "ART-AL00x"

    const/16 v11, 0x170

    aput-object v10, v0, v11

    const-string v11, "ART-TL00x"

    const/16 v12, 0x171

    aput-object v11, v0, v12

    const/16 v11, 0x172

    aput-object v31, v0, v11

    const/16 v11, 0x173

    aput-object v5, v0, v11

    const-string v11, "AMN-AL10"

    const/16 v12, 0x174

    aput-object v11, v0, v12

    const-string v11, "KSA-AL10"

    const/16 v12, 0x175

    aput-object v11, v0, v12

    const-string v11, "AMN-TL10"

    const/16 v12, 0x176

    aput-object v11, v0, v12

    const-string v11, "LRA-AL00"

    const/16 v12, 0x177

    aput-object v11, v0, v12

    const-string v11, "AQM-AL00"

    const/16 v12, 0x178

    aput-object v11, v0, v12

    const/16 v11, 0x179

    aput-object v3, v0, v11

    const-string v11, "AQM-TL00"

    const/16 v12, 0x17a

    aput-object v11, v0, v12

    const-string v11, "LIO-TN00"

    const/16 v12, 0x17b

    aput-object v11, v0, v12

    const-string v12, "LIO-AN00P"

    const/16 v13, 0x17c

    aput-object v12, v0, v13

    const-string v13, "LIO-AN00"

    const/16 v14, 0x17d

    aput-object v13, v0, v14

    const-string v14, "TAS-TN00"

    const/16 v15, 0x17e

    aput-object v14, v0, v15

    const-string v15, "TAS-AN00"

    const/16 v16, 0x17f

    aput-object v15, v0, v16

    const-string v16, "BZW-AL00"

    const/16 v17, 0x180

    aput-object v16, v0, v17

    const-string v16, "BZW-AL10"

    const/16 v17, 0x181

    aput-object v16, v0, v17

    const-string v16, "MRX-AL09"

    const/16 v17, 0x182

    aput-object v16, v0, v17

    const-string v16, "WLZ-AN00"

    const/16 v17, 0x183

    aput-object v16, v0, v17

    const-string v17, "OXF-AN00"

    const/16 v18, 0x184

    aput-object v17, v0, v18

    const-string v18, "WLZ-AL10"

    const/16 v19, 0x185

    aput-object v18, v0, v19

    const-string v18, "GLK-LX1U"

    const/16 v19, 0x186

    aput-object v18, v0, v19

    const-string v18, "OXF-AN10"

    const/16 v19, 0x187

    aput-object v18, v0, v19

    const/16 v19, 0x188

    aput-object v11, v0, v19

    const/16 v19, 0x189

    aput-object v12, v0, v19

    const/16 v19, 0x18a

    aput-object v13, v0, v19

    const-string v19, "MRX-AL19"

    const/16 v20, 0x18b

    aput-object v19, v0, v20

    const-string v19, "JNY-AL10"

    const/16 v20, 0x18c

    aput-object v19, v0, v20

    const/16 v20, 0x18d

    aput-object v17, v0, v20

    const/16 v20, 0x18e

    aput-object v18, v0, v20

    const/16 v20, 0x18f

    aput-object v16, v0, v20

    const/16 v20, 0x190

    aput-object v6, v0, v20

    const/16 v20, 0x191

    aput-object v10, v0, v20

    const/16 v20, 0x192

    aput-object v7, v0, v20

    const/16 v7, 0x193

    aput-object v6, v0, v7

    const/16 v7, 0x194

    aput-object v19, v0, v7

    const-string v7, "TAH-AN00m"

    const/16 v19, 0x195

    aput-object v7, v0, v19

    const/16 v19, 0x196

    aput-object v32, v0, v19

    const/16 v19, 0x197

    aput-object v5, v0, v19

    const-string v19, "MOA-TL00"

    const/16 v20, 0x198

    aput-object v19, v0, v20

    const-string v19, "MOA-AL00"

    const/16 v20, 0x199

    aput-object v19, v0, v20

    const-string v20, "MED-TL00"

    const/16 v21, 0x19a

    aput-object v20, v0, v21

    const-string v20, "MED-AL00"

    const/16 v21, 0x19b

    aput-object v20, v0, v21

    const/16 v21, 0x19c

    aput-object v8, v0, v21

    const-string v21, "ANA-AN00"

    const/16 v22, 0x19d

    aput-object v21, v0, v22

    const-string v22, "ANA-TN00"

    const/16 v23, 0x19e

    aput-object v22, v0, v23

    const-string v23, "HLK-AL00a"

    const/16 v24, 0x19f

    aput-object v23, v0, v24

    const-string v23, "ELS-AN00"

    const/16 v24, 0x1a0

    aput-object v23, v0, v24

    const-string v24, "ELS-TN00"

    const/16 v25, 0x1a1

    aput-object v24, v0, v25

    const-string v25, "ART-AL00m"

    const/16 v26, 0x1a2

    aput-object v25, v0, v26

    const-string v25, "BAH3-AL00"

    const/16 v26, 0x1a3

    aput-object v25, v0, v26

    const/16 v25, 0x1a4

    aput-object v20, v0, v25

    const-string v20, "H122-373"

    const/16 v25, 0x1a5

    aput-object v20, v0, v25

    const-string v20, "BMH-AN10"

    const/16 v25, 0x1a6

    aput-object v20, v0, v25

    const-string v25, "EBG-AN00"

    const/16 v26, 0x1a7

    aput-object v25, v0, v26

    const-string v26, "EBG-AN10"

    const/16 v27, 0x1a8

    aput-object v26, v0, v27

    const-string v27, "JEF-AN00"

    const/16 v28, 0x1a9

    aput-object v27, v0, v28

    const-string v28, "BZT3-AL00"

    const/16 v29, 0x1aa

    aput-object v28, v0, v29

    const-string v28, "CDY-AN90"

    const/16 v29, 0x1ab

    aput-object v28, v0, v29

    const-string v29, "MED-AL20"

    const/16 v30, 0x1ac

    aput-object v29, v0, v30

    const-string v29, "MOA-AL20"

    const/16 v30, 0x1ad

    aput-object v29, v0, v30

    const-string v29, "AKA-AL10"

    const/16 v30, 0x1ae

    aput-object v29, v0, v30

    const-string v30, "CDY-AN00"

    const/16 v31, 0x1af

    aput-object v30, v0, v31

    const-string v31, "CDY-TN00"

    const/16 v32, 0x1b0

    aput-object v31, v0, v32

    const-string v32, "EBG-TN00"

    const/16 v33, 0x1b1

    aput-object v32, v0, v33

    const-string v33, "AQM-AL10"

    const/16 v34, 0x1b2

    aput-object v33, v0, v34

    const/16 v33, 0x1b3

    aput-object v1, v0, v33

    const-string v33, "JER-AN10"

    const/16 v34, 0x1b4

    aput-object v33, v0, v34

    const-string v34, "CDY-TN90"

    const/16 v35, 0x1b5

    aput-object v34, v0, v35

    const-string v35, "JEF-TN00"

    const/16 v36, 0x1b6

    aput-object v35, v0, v36

    const-string v36, "ELS-AN10"

    const/16 v37, 0x1b7

    aput-object v36, v0, v37

    const-string v37, "ELS-TN10"

    const/16 v38, 0x1b8

    aput-object v37, v0, v38

    const/16 v37, 0x1b9

    aput-object v21, v0, v37

    const/16 v37, 0x1ba

    aput-object v22, v0, v37

    const-string v37, "NEO-AL10"

    const/16 v38, 0x1bb

    aput-object v37, v0, v38

    const/16 v38, 0x1bc

    aput-object v23, v0, v38

    const/16 v38, 0x1bd

    aput-object v24, v0, v38

    const/16 v38, 0x1be

    aput-object v19, v0, v38

    const-string v19, "JER-TN10"

    const/16 v38, 0x1bf

    aput-object v19, v0, v38

    const-string v38, "BMH-TN10"

    const/16 v39, 0x1c0

    aput-object v38, v0, v39

    const-string v39, "TEL-AN00"

    const/16 v40, 0x1c1

    aput-object v39, v0, v40

    const-string v40, "TEL-AN00a"

    const/16 v41, 0x1c2

    aput-object v40, v0, v41

    const/16 v41, 0x1c3

    aput-object v17, v0, v41

    const/16 v41, 0x1c4

    aput-object v16, v0, v41

    const/16 v41, 0x1c5

    aput-object v18, v0, v41

    const/16 v41, 0x1c6

    aput-object v4, v0, v41

    const/16 v41, 0x1c7

    aput-object v3, v0, v41

    const-string v3, "TEL-TN00"

    const/16 v41, 0x1c8

    aput-object v3, v0, v41

    const/16 v41, 0x1c9

    aput-object v28, v0, v41

    const/16 v41, 0x1ca

    aput-object v7, v0, v41

    const-string v41, "BZD-AL00"

    const/16 v42, 0x1cb

    aput-object v41, v0, v42

    const/16 v41, 0x1cc

    aput-object v30, v0, v41

    const/16 v41, 0x1cd

    aput-object v20, v0, v41

    const-string v41, "OXP-AN00"

    const/16 v42, 0x1ce

    aput-object v41, v0, v42

    const-string v42, "FRL-AN00a"

    const/16 v43, 0x1cf

    aput-object v42, v0, v43

    const/16 v43, 0x1d0

    aput-object v33, v0, v43

    const/16 v43, 0x1d1

    aput-object v27, v0, v43

    const-string v43, "MRX-AN19"

    const/16 v44, 0x1d2

    aput-object v43, v0, v44

    const/16 v44, 0x1d3

    aput-object v25, v0, v44

    const/16 v44, 0x1d4

    aput-object v38, v0, v44

    const/16 v44, 0x1d5

    aput-object v34, v0, v44

    const/16 v44, 0x1d6

    aput-object v31, v0, v44

    const/16 v44, 0x1d7

    aput-object v29, v0, v44

    const-string v29, "AGS3-AL00"

    const/16 v44, 0x1d8

    aput-object v29, v0, v44

    const/16 v29, 0x1d9

    aput-object v35, v0, v29

    const-string v29, "AGS3-AL09HN"

    const/16 v44, 0x1da

    aput-object v29, v0, v44

    const/16 v29, 0x1db

    aput-object v10, v0, v29

    const/16 v10, 0x1dc

    aput-object v6, v0, v10

    const/16 v6, 0x1dd

    aput-object v19, v0, v6

    const-string v6, "DVC-AN00"

    const/16 v10, 0x1de

    aput-object v6, v0, v10

    const/16 v10, 0x1df

    aput-object v9, v0, v10

    const/16 v10, 0x1e0

    aput-object v39, v0, v10

    const-string v10, "KKG-AN00"

    const/16 v29, 0x1e1

    aput-object v10, v0, v29

    const-string v29, "MXW-AN00"

    const/16 v44, 0x1e2

    aput-object v29, v0, v44

    const-string v44, "MXW-TN00"

    const/16 v45, 0x1e3

    aput-object v44, v0, v45

    const-string v45, "TNNH-AN00"

    const/16 v46, 0x1e4

    aput-object v45, v0, v46

    const-string v46, "DVC-AN20"

    const/16 v47, 0x1e5

    aput-object v46, v0, v47

    const-string v47, "CDY-AN20"

    const/16 v48, 0x1e6

    aput-object v47, v0, v48

    const-string v48, "CDY-AN95"

    const/16 v49, 0x1e7

    aput-object v48, v0, v49

    const-string v49, "CDY-TN20"

    const/16 v50, 0x1e8

    aput-object v49, v0, v50

    const-string v50, "CDY-TN95"

    const/16 v51, 0x1e9

    aput-object v50, v0, v51

    const/16 v51, 0x1ea

    aput-object v36, v0, v51

    const-string v51, "BMH-AN20"

    const/16 v52, 0x1eb

    aput-object v51, v0, v52

    const-string v52, "BMH-TN20"

    const/16 v53, 0x1ec

    aput-object v52, v0, v53

    const-string v53, "DVC-TN20"

    const/16 v54, 0x1ed

    aput-object v53, v0, v54

    const-string v54, "JEF-AN20"

    const/16 v55, 0x1ee

    aput-object v54, v0, v55

    const-string v55, "JEF-TN20"

    const/16 v56, 0x1ef

    aput-object v55, v0, v56

    const-string v56, "JER-AN20"

    const/16 v57, 0x1f0

    aput-object v56, v0, v57

    const-string v57, "JER-TN20"

    const/16 v58, 0x1f1

    aput-object v57, v0, v58

    const-string v58, "ASK-AL20"

    const/16 v59, 0x1f2

    aput-object v58, v0, v59

    const-string v58, "TEL-AN10"

    const/16 v59, 0x1f3

    aput-object v58, v0, v59

    const-string v59, "TEL-TN10"

    const/16 v60, 0x1f4

    aput-object v59, v0, v60

    const-string v59, "NIK-AL00"

    const/16 v60, 0x1f5

    aput-object v59, v0, v60

    const/16 v60, 0x1f6

    aput-object v41, v0, v60

    const/16 v60, 0x1f7

    aput-object v6, v0, v60

    const/16 v60, 0x1f8

    aput-object v21, v0, v60

    const-string v60, "WKG-AN00"

    const/16 v61, 0x1f9

    aput-object v60, v0, v61

    const-string v61, "KRJ-AN00"

    const/16 v62, 0x1fa

    aput-object v61, v0, v62

    const/16 v62, 0x1fb

    aput-object v46, v0, v62

    const-string v62, "TNN-AN00"

    const/16 v63, 0x1fc

    aput-object v62, v0, v63

    const-string v63, "WKG-TN00"

    const/16 v64, 0x1fd

    aput-object v63, v0, v64

    const/16 v64, 0x1fe

    aput-object v7, v0, v64

    const/16 v64, 0x1ff

    aput-object v29, v0, v64

    const/16 v64, 0x200

    aput-object v44, v0, v64

    const-string v64, "SCMR-AL09"

    const/16 v65, 0x201

    aput-object v64, v0, v65

    const/16 v64, 0x202

    aput-object v53, v0, v64

    const-string v64, "AGR-AL09HN"

    const/16 v65, 0x203

    aput-object v64, v0, v65

    const-string v64, "BZC-AL00"

    const/16 v65, 0x204

    aput-object v64, v0, v65

    const-string v64, "NZA-AN00"

    const/16 v65, 0x205

    aput-object v64, v0, v65

    const-string v65, "NZA-TN00"

    const/16 v66, 0x206

    aput-object v65, v0, v66

    const/16 v66, 0x207

    aput-object v42, v0, v66

    const/16 v66, 0x208

    aput-object v21, v0, v66

    const/16 v66, 0x209

    aput-object v22, v0, v66

    const/16 v66, 0x20a

    aput-object v23, v0, v66

    const/16 v66, 0x20b

    aput-object v24, v0, v66

    const/16 v66, 0x20c

    aput-object v13, v0, v66

    const/16 v66, 0x20d

    aput-object v12, v0, v66

    const/16 v66, 0x20e

    aput-object v11, v0, v66

    const/16 v66, 0x20f

    aput-object v15, v0, v66

    const/16 v66, 0x210

    aput-object v14, v0, v66

    const-string v66, "FRL-TN00"

    const/16 v67, 0x211

    aput-object v66, v0, v67

    const/16 v67, 0x212

    aput-object v46, v0, v67

    const/16 v67, 0x213

    aput-object v53, v0, v67

    const-string v67, "NOH-AN00"

    const/16 v68, 0x214

    aput-object v67, v0, v68

    const-string v68, "LIO-AL00m"

    const/16 v69, 0x215

    aput-object v68, v0, v69

    const-string v68, "NOP-AN00"

    const/16 v69, 0x216

    aput-object v68, v0, v69

    const/16 v69, 0x217

    aput-object v60, v0, v69

    const/16 v69, 0x218

    aput-object v6, v0, v69

    const/16 v69, 0x219

    aput-object v29, v0, v69

    const/16 v69, 0x21a

    aput-object v44, v0, v69

    const-string v69, "BAH3-AN10"

    const/16 v70, 0x21b

    aput-object v69, v0, v70

    const-string v70, "BZD-AL10"

    const/16 v71, 0x21c

    aput-object v70, v0, v71

    const/16 v70, 0x21d

    aput-object v28, v0, v70

    const/16 v70, 0x21e

    aput-object v17, v0, v70

    const/16 v70, 0x21f

    aput-object v18, v0, v70

    const/16 v70, 0x220

    aput-object v16, v0, v70

    const/16 v70, 0x221

    aput-object v64, v0, v70

    const/16 v70, 0x222

    aput-object v20, v0, v70

    const/16 v20, 0x223

    aput-object v30, v0, v20

    const/16 v20, 0x224

    aput-object v25, v0, v20

    const/16 v20, 0x225

    aput-object v26, v0, v20

    const/16 v20, 0x226

    aput-object v27, v0, v20

    const/16 v20, 0x227

    aput-object v33, v0, v20

    const/16 v20, 0x228

    aput-object v63, v0, v20

    const/16 v20, 0x229

    aput-object v4, v0, v20

    const-string v20, "CND-AN00"

    const/16 v27, 0x22a

    aput-object v20, v0, v27

    const/16 v27, 0x22b

    aput-object v37, v0, v27

    const/16 v27, 0x22c

    aput-object v38, v0, v27

    const-string v27, "OCE-AN00"

    const/16 v70, 0x22d

    aput-object v27, v0, v70

    const/16 v70, 0x22e

    aput-object v39, v0, v70

    const/16 v70, 0x22f

    aput-object v40, v0, v70

    const/16 v70, 0x230

    aput-object v3, v0, v70

    const/16 v70, 0x231

    aput-object v36, v0, v70

    const-string v70, "HJC-AN00"

    const/16 v71, 0x232

    aput-object v70, v0, v71

    const-string v71, "HJC-TN00"

    const/16 v72, 0x233

    aput-object v71, v0, v72

    const-string v72, "JSC-AN00"

    const/16 v73, 0x234

    aput-object v72, v0, v73

    const-string v73, "JSC-TN00"

    const/16 v74, 0x235

    aput-object v73, v0, v74

    const/16 v74, 0x236

    aput-object v65, v0, v74

    const/16 v74, 0x237

    aput-object v2, v0, v74

    const/16 v2, 0x238

    aput-object v1, v0, v2

    const/16 v1, 0x239

    aput-object v31, v0, v1

    const/16 v1, 0x23a

    aput-object v34, v0, v1

    const/16 v1, 0x23b

    aput-object v35, v0, v1

    const/16 v1, 0x23c

    aput-object v19, v0, v1

    const-string v1, "CND-TN00"

    const/16 v2, 0x23d

    aput-object v1, v0, v2

    const/16 v1, 0x23e

    aput-object v32, v0, v1

    const-string v1, "LIO-AN00m"

    const/16 v2, 0x23f

    aput-object v1, v0, v2

    const/16 v2, 0x240

    aput-object v67, v0, v2

    const-string v2, "TET-AN00"

    const/16 v74, 0x241

    aput-object v2, v0, v74

    const-string v74, "TET-AN10"

    const/16 v75, 0x242

    aput-object v74, v0, v75

    const/16 v74, 0x243

    aput-object v9, v0, v74

    const/16 v74, 0x244

    aput-object v43, v0, v74

    const/16 v74, 0x245

    aput-object v44, v0, v74

    const/16 v74, 0x246

    aput-object v29, v0, v74

    const/16 v74, 0x247

    aput-object v53, v0, v74

    const/16 v74, 0x248

    aput-object v46, v0, v74

    const/16 v74, 0x249

    aput-object v6, v0, v74

    const/16 v74, 0x24a

    aput-object v10, v0, v74

    const-string v10, "ANG-AN00"

    const/16 v74, 0x24b

    aput-object v10, v0, v74

    const/16 v10, 0x24c

    aput-object v5, v0, v10

    const/16 v5, 0x24d

    aput-object v8, v0, v5

    const-string v5, "OCE-AN10"

    const/16 v8, 0x24e

    aput-object v5, v0, v8

    const-string v5, "CDL-AN50"

    const/16 v8, 0x24f

    aput-object v5, v0, v8

    const/16 v5, 0x250

    aput-object v54, v0, v5

    const/16 v5, 0x251

    aput-object v55, v0, v5

    const/16 v5, 0x252

    aput-object v58, v0, v5

    const-string v5, "BRQ-AN00"

    const/16 v8, 0x253

    aput-object v5, v0, v8

    const/16 v5, 0x254

    aput-object v51, v0, v5

    const/16 v5, 0x255

    aput-object v52, v0, v5

    const/16 v5, 0x256

    aput-object v47, v0, v5

    const/16 v5, 0x257

    aput-object v48, v0, v5

    const/16 v5, 0x258

    aput-object v49, v0, v5

    const/16 v5, 0x259

    aput-object v50, v0, v5

    const/16 v5, 0x25a

    aput-object v56, v0, v5

    const/16 v5, 0x25b

    aput-object v57, v0, v5

    const/16 v5, 0x25c

    aput-object v62, v0, v5

    const/16 v5, 0x25d

    aput-object v45, v0, v5

    const-string v5, "YOK-AN10"

    const/16 v8, 0x25e

    aput-object v5, v0, v8

    const/16 v5, 0x25f

    aput-object v7, v0, v5

    const/16 v5, 0x260

    aput-object v63, v0, v5

    const/16 v5, 0x261

    aput-object v60, v0, v5

    const-string v5, "HJC-AN90"

    const/16 v7, 0x262

    aput-object v5, v0, v7

    const/16 v5, 0x263

    aput-object v64, v0, v5

    const/16 v5, 0x264

    aput-object v65, v0, v5

    const-string v5, "PPA-AL20"

    const/16 v7, 0x265

    aput-object v5, v0, v7

    const/16 v5, 0x266

    aput-object v2, v0, v5

    const/16 v2, 0x267

    aput-object v61, v0, v2

    const/16 v2, 0x268

    aput-object v59, v0, v2

    const/16 v2, 0x269

    aput-object v21, v0, v2

    const/16 v2, 0x26a

    aput-object v22, v0, v2

    const/16 v2, 0x26b

    aput-object v23, v0, v2

    const/16 v2, 0x26c

    aput-object v24, v0, v2

    const/16 v2, 0x26d

    aput-object v13, v0, v2

    const/16 v2, 0x26e

    aput-object v12, v0, v2

    const/16 v2, 0x26f

    aput-object v11, v0, v2

    const/16 v2, 0x270

    aput-object v15, v0, v2

    const/16 v2, 0x271

    aput-object v14, v0, v2

    const-string v2, "DNN-AL00"

    const/16 v5, 0x272

    aput-object v2, v0, v5

    const/16 v2, 0x273

    aput-object v42, v0, v2

    const/16 v2, 0x274

    aput-object v66, v0, v2

    const-string v2, "PKU-AL40"

    const/16 v5, 0x275

    aput-object v2, v0, v5

    const/16 v2, 0x276

    aput-object v4, v0, v2

    const/16 v2, 0x277

    aput-object v9, v0, v2

    const/16 v2, 0x278

    aput-object v37, v0, v2

    const/16 v2, 0x279

    aput-object v69, v0, v2

    const/16 v2, 0x27a

    aput-object v3, v0, v2

    const/16 v2, 0x27b

    aput-object v40, v0, v2

    const/16 v2, 0x27c

    aput-object v39, v0, v2

    const/16 v2, 0x27d

    aput-object v18, v0, v2

    const/16 v2, 0x27e

    aput-object v17, v0, v2

    const/16 v2, 0x27f

    aput-object v16, v0, v2

    const/16 v2, 0x280

    aput-object v33, v0, v2

    const/16 v2, 0x281

    aput-object v28, v0, v2

    const/16 v2, 0x282

    aput-object v30, v0, v2

    const/16 v2, 0x283

    aput-object v25, v0, v2

    const/16 v2, 0x284

    aput-object v26, v0, v2

    const/16 v2, 0x285

    aput-object v36, v0, v2

    const/16 v2, 0x286

    aput-object v68, v0, v2

    const/16 v2, 0x287

    aput-object v67, v0, v2

    const/16 v2, 0x288

    aput-object v27, v0, v2

    const/16 v2, 0x289

    aput-object v1, v0, v2

    const/16 v1, 0x28a

    aput-object v19, v0, v1

    const/16 v1, 0x28b

    aput-object v35, v0, v1

    const/16 v1, 0x28c

    aput-object v32, v0, v1

    const/16 v1, 0x28d

    aput-object v20, v0, v1

    const/16 v1, 0x28e

    aput-object v34, v0, v1

    const/16 v1, 0x28f

    aput-object v38, v0, v1

    const/16 v1, 0x290

    aput-object v31, v0, v1

    const-string v1, "OCE-AN50"

    const/16 v2, 0x291

    aput-object v1, v0, v2

    const-string v1, "NOH-AN01"

    const/16 v2, 0x292

    aput-object v1, v0, v2

    const-string v1, "ANA-AL00"

    const/16 v2, 0x293

    aput-object v1, v0, v2

    const/16 v1, 0x294

    aput-object v43, v0, v1

    const/16 v1, 0x295

    aput-object v71, v0, v1

    const/16 v1, 0x296

    aput-object v70, v0, v1

    const/16 v1, 0x297

    aput-object v72, v0, v1

    const/16 v1, 0x298

    aput-object v41, v0, v1

    const/16 v1, 0x299

    aput-object v6, v0, v1

    const/16 v1, 0x29a

    aput-object v53, v0, v1

    const/16 v1, 0x29b

    aput-object v73, v0, v1

    const/16 v1, 0x29c

    aput-object v46, v0, v1

    const/16 v1, 0x29d

    aput-object v29, v0, v1

    const/16 v1, 0x29e

    aput-object v44, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the mobile model is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DynamicUtil"

    invoke-static {v2, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 4

    const-string v0, "android.os.SystemProperties"

    const-string v1, "UNKNOWN"

    const-string v2, "get"

    const-string v3, "ro.build.2b2c.partner.ext_channel"

    invoke-static {v2, v3, v0, v1}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFlyingSkyDevice extChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicUtil"

    invoke-static {v2, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDynamicModule()Lcom/huawei/hms/feature/dynamic/DynamicModule;
    .locals 1

    sget-object v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->a:Lcom/huawei/hms/feature/dynamic/DynamicModule;

    return-object v0
.end method

.method public static getEmuiVersionCode()I
    .locals 7

    const/4 v0, 0x1

    const-string v1, "DynamicUtil"

    sget v2, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    if-eqz v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.huawei.android.os.BuildEx$VERSION"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EMUI_SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException: getEMUIVersionCode is not a number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v0, "IllegalAccessException: "

    goto :goto_0

    :catch_2
    const-string v0, "NoSuchFieldException: "

    goto :goto_0

    :catch_3
    const-string v0, "ClassNotFoundException: "

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emuiVersionCodeValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getMagicVersionCode()I

    move-result v0

    sput v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    :cond_2
    sget v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    return v0
.end method

.method public static getMagicVersionCode()I
    .locals 7

    const/4 v0, 0x1

    const-string v1, "DynamicUtil"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.hihonor.android.os.BuildEx$VERSION"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EMUI_SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException: getEMUIVersionCode is not a number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v0, "IllegalAccessException: "

    goto :goto_0

    :catch_2
    const-string v0, "NoSuchFieldException: "

    goto :goto_0

    :catch_3
    const-string v0, "ClassNotFoundException: "

    goto :goto_0

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emuiVersionCodeValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/huawei/hms/maps/utils/DynamicUtil;->b:I

    return v0
.end method

.method public static handlerDynamicLoadAfterLogic(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/huawei/hms/maps/utils/DynamicUtil;->isHuaweiPhone(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lcom/huawei/hms/feature/dynamic/DynamicModule;->enable3rdPhone(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->isLowEmuiVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/huawei/hms/feature/dynamic/DynamicModule;->enableLowEMUI(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static isAndroidN()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHonorPhone()Z
    .locals 4

    const-string v0, "DynamicUtil"

    :try_start_0
    const-string v1, "HONOR"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to judge phone."

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHonorPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isHuaweiPhone(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "DynamicUtil"

    sget-boolean v1, Lcom/huawei/hms/maps/utils/DynamicUtil;->c:Z

    if-eqz v1, :cond_0

    sget-boolean p0, Lcom/huawei/hms/maps/utils/DynamicUtil;->d:Z

    return p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->b()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlyingSkyPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.huawei.software.features.handset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.hihonor.software.features.handset"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_5

    const-string p0, "HUAWEI"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->isHonorPhone()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    move p0, v3

    :cond_5
    sput-boolean p0, Lcom/huawei/hms/maps/utils/DynamicUtil;->d:Z

    :cond_6
    sput-boolean v2, Lcom/huawei/hms/maps/utils/DynamicUtil;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "Failed to judge phone."

    invoke-static {v0, p0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHuaweiPhone : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/huawei/hms/maps/utils/DynamicUtil;->d:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/huawei/hms/maps/utils/DynamicUtil;->d:Z

    return p0
.end method

.method public static isLowEmuiVersion()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getEmuiVersionCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getEmuiVersionCode()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDynamicModule(Lcom/huawei/hms/feature/dynamic/DynamicModule;)V
    .locals 0

    sput-object p0, Lcom/huawei/hms/maps/utils/DynamicUtil;->a:Lcom/huawei/hms/feature/dynamic/DynamicModule;

    return-void
.end method
