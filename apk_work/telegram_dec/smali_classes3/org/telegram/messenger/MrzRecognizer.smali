.class public Lorg/telegram/messenger/MrzRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MrzRecognizer$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native binarizeAndFindCharacters(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[[Landroid/graphics/Rect;
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    if-nez v3, :cond_1

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, p0, v2

    goto :goto_1

    :cond_1
    aget-char v3, p0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static checksum(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x3

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    aget-char v4, p0, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x30

    goto :goto_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, -0x37

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    rem-int/lit8 v5, v2, 0x3

    aget v5, v0, v5

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    rem-int/lit8 v3, v3, 0xa

    return v3
.end method

.method private static cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    const-string v31, "IU"

    const-string v32, "IA"

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "V"

    const-string v3, "G"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "E"

    const-string v7, "ZH"

    const-string v8, "Z"

    const-string v9, "I"

    const-string v10, "I"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "F"

    const-string v22, "KH"

    const-string v23, "TS"

    const-string v24, "CH"

    const-string v25, "SH"

    const-string v26, "SHCH"

    const-string v27, "IE"

    const-string v28, "Y"

    const-string v29, ""

    const-string v30, "E"

    filled-new-array/range {v0 .. v32}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x21

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v4, "\u0410\u0411\u0412\u0413\u0414\u0415\u0401\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042b\u042c\u042d\u042e\u042f"

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aget-object v2, v0, v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static native findCornerPoints(Landroid/graphics/Bitmap;)[I
.end method

.method private static getCountriesMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AFG"

    const-string v2, "AF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ALA"

    const-string v2, "AX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ALB"

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DZA"

    const-string v2, "DZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ASM"

    const-string v2, "AS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AND"

    const-string v2, "AD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AGO"

    const-string v2, "AO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AIA"

    const-string v2, "AI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ATA"

    const-string v2, "AQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ATG"

    const-string v2, "AG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ARG"

    const-string v2, "AR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ARM"

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ABW"

    const-string v2, "AW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AUS"

    const-string v2, "AU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AUT"

    const-string v2, "AT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AZE"

    const-string v2, "AZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BHS"

    const-string v2, "BS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BHR"

    const-string v2, "BH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BGD"

    const-string v2, "BD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BRB"

    const-string v2, "BB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BLR"

    const-string v2, "BY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BEL"

    const-string v2, "BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BLZ"

    const-string v2, "BZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BEN"

    const-string v2, "BJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BMU"

    const-string v2, "BM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BTN"

    const-string v2, "BT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BOL"

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BES"

    const-string v2, "BQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BIH"

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BWA"

    const-string v2, "BW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BVT"

    const-string v2, "BV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BRA"

    const-string v2, "BR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IOT"

    const-string v2, "IO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BRN"

    const-string v2, "BN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BGR"

    const-string v2, "BG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BFA"

    const-string v2, "BF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BDI"

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CPV"

    const-string v2, "CV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KHM"

    const-string v2, "KH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CMR"

    const-string v2, "CM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CAN"

    const-string v2, "CA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CYM"

    const-string v2, "KY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CAF"

    const-string v2, "CF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TCD"

    const-string v2, "TD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CHL"

    const-string v2, "CL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CHN"

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CXR"

    const-string v2, "CX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CCK"

    const-string v2, "CC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COL"

    const-string v2, "CO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COM"

    const-string v2, "KM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COG"

    const-string v2, "CG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COD"

    const-string v2, "CD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COK"

    const-string v2, "CK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CRI"

    const-string v2, "CR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CIV"

    const-string v2, "CI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HRV"

    const-string v2, "HR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CUB"

    const-string v2, "CU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CUW"

    const-string v2, "CW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CYP"

    const-string v2, "CY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CZE"

    const-string v2, "CZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DNK"

    const-string v2, "DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DJI"

    const-string v2, "DJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DMA"

    const-string v2, "DM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DOM"

    const-string v2, "DO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECU"

    const-string v2, "EC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EGY"

    const-string v2, "EG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SLV"

    const-string v2, "SV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GNQ"

    const-string v2, "GQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ERI"

    const-string v2, "ER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EST"

    const-string v2, "EE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ETH"

    const-string v2, "ET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FLK"

    const-string v2, "FK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FRO"

    const-string v2, "FO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FJI"

    const-string v2, "FJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FIN"

    const-string v2, "FI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FRA"

    const-string v2, "FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GUF"

    const-string v2, "GF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PYF"

    const-string v2, "PF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ATF"

    const-string v2, "TF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GAB"

    const-string v2, "GA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GMB"

    const-string v2, "GM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GEO"

    const-string v2, "GE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "D<<"

    const-string v2, "DE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GHA"

    const-string v2, "GH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIB"

    const-string v2, "GI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GRC"

    const-string v2, "GR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GRL"

    const-string v2, "GL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GRD"

    const-string v2, "GD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GLP"

    const-string v2, "GP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GUM"

    const-string v2, "GU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GTM"

    const-string v2, "GT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GGY"

    const-string v2, "GG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIN"

    const-string v2, "GN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GNB"

    const-string v2, "GW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GUY"

    const-string v2, "GY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HTI"

    const-string v2, "HT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMD"

    const-string v2, "HM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VAT"

    const-string v2, "VA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HND"

    const-string v2, "HN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HKG"

    const-string v2, "HK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HUN"

    const-string v2, "HU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISL"

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IND"

    const-string v2, "IN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IDN"

    const-string v2, "ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IRN"

    const-string v2, "IR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IRQ"

    const-string v2, "IQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IRL"

    const-string v2, "IE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IMN"

    const-string v2, "IM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISR"

    const-string v2, "IL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ITA"

    const-string v2, "IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JAM"

    const-string v2, "JM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JPN"

    const-string v2, "JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JEY"

    const-string v2, "JE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JOR"

    const-string v2, "JO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KAZ"

    const-string v2, "KZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEN"

    const-string v2, "KE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KIR"

    const-string v2, "KI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRK"

    const-string v2, "KP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KOR"

    const-string v2, "KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KWT"

    const-string v2, "KW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KGZ"

    const-string v2, "KG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LAO"

    const-string v2, "LA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LVA"

    const-string v2, "LV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LBN"

    const-string v2, "LB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LSO"

    const-string v2, "LS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LBR"

    const-string v2, "LR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LBY"

    const-string v2, "LY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LIE"

    const-string v2, "LI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LTU"

    const-string v2, "LT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LUX"

    const-string v2, "LU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAC"

    const-string v2, "MO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MKD"

    const-string v2, "MK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MDG"

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MWI"

    const-string v2, "MW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MYS"

    const-string v2, "MY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MDV"

    const-string v2, "MV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MLI"

    const-string v2, "ML"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MLT"

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MHL"

    const-string v2, "MH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MTQ"

    const-string v2, "MQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MRT"

    const-string v2, "MR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MUS"

    const-string v2, "MU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MYT"

    const-string v2, "YT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MEX"

    const-string v2, "MX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FSM"

    const-string v2, "FM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MDA"

    const-string v2, "MD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MCO"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MNG"

    const-string v2, "MN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MNE"

    const-string v2, "ME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MSR"

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAR"

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MOZ"

    const-string v2, "MZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MMR"

    const-string v2, "MM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NAM"

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NRU"

    const-string v2, "NR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NPL"

    const-string v2, "NP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NLD"

    const-string v2, "NL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NCL"

    const-string v2, "NC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NZL"

    const-string v2, "NZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NIC"

    const-string v2, "NI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NER"

    const-string v2, "NE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NGA"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NIU"

    const-string v2, "NU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NFK"

    const-string v2, "NF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MNP"

    const-string v2, "MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NOR"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OMN"

    const-string v2, "OM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PAK"

    const-string v2, "PK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PLW"

    const-string v2, "PW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PSE"

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PAN"

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PNG"

    const-string v2, "PG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRY"

    const-string v2, "PY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PER"

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PHL"

    const-string v2, "PH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PCN"

    const-string v2, "PN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POL"

    const-string v2, "PL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRT"

    const-string v2, "PT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRI"

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QAT"

    const-string v2, "QA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REU"

    const-string v2, "RE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ROU"

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RUS"

    const-string v2, "RU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RWA"

    const-string v2, "RW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BLM"

    const-string v2, "BL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHN"

    const-string v2, "SH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KNA"

    const-string v2, "KN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LCA"

    const-string v2, "LC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAF"

    const-string v2, "MF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SPM"

    const-string v2, "PM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VCT"

    const-string v2, "VC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WSM"

    const-string v2, "WS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SMR"

    const-string v2, "SM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "STP"

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SAU"

    const-string v2, "SA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SEN"

    const-string v2, "SN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SRB"

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SYC"

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SLE"

    const-string v2, "SL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SGP"

    const-string v2, "SG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SXM"

    const-string v2, "SX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SVK"

    const-string v2, "SK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SVN"

    const-string v2, "SI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SLB"

    const-string v2, "SB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SOM"

    const-string v2, "SO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ZAF"

    const-string v2, "ZA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SGS"

    const-string v2, "GS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSD"

    const-string v2, "SS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ESP"

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LKA"

    const-string v2, "LK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SDN"

    const-string v2, "SD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUR"

    const-string v2, "SR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SJM"

    const-string v2, "SJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SWZ"

    const-string v2, "SZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SWE"

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CHE"

    const-string v2, "CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SYR"

    const-string v2, "SY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TWN"

    const-string v2, "TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TJK"

    const-string v2, "TJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TZA"

    const-string v2, "TZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "THA"

    const-string v2, "TH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS"

    const-string v2, "TL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TGO"

    const-string v2, "TG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TKL"

    const-string v2, "TK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TON"

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TTO"

    const-string v2, "TT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TUN"

    const-string v2, "TN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TUR"

    const-string v2, "TR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TKM"

    const-string v2, "TM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TCA"

    const-string v2, "TC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TUV"

    const-string v2, "TV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UGA"

    const-string v2, "UG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UKR"

    const-string v2, "UA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ARE"

    const-string v2, "AE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GBR"

    const-string v2, "GB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "USA"

    const-string v2, "US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UMI"

    const-string v2, "UM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "URY"

    const-string v2, "UY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UZB"

    const-string v2, "UZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VUT"

    const-string v2, "VU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VEN"

    const-string v2, "VE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VNM"

    const-string v2, "VN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VGB"

    const-string v2, "VG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VIR"

    const-string v2, "VI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WLF"

    const-string v2, "WF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ESH"

    const-string v2, "EH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "YEM"

    const-string v2, "YE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ZMB"

    const-string v2, "ZM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ZWE"

    const-string v2, "ZW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getNumber(C)I
    .locals 1

    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x49

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x42

    if-ne p0, v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x30

    return p0
.end method

.method private static parseBirthDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, -0x5

    if-ge v0, v2, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x76c

    :goto_0
    iget v2, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    add-int/2addr v2, v0

    iput v2, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static parseExpiryDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 2

    :try_start_0
    const-string v0, "<<<<<<"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->doesNotExpire:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryYear:I

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryMonth:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static parseGender(C)I
    .locals 1

    const/16 v0, 0x46

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static native performRecognition(Landroid/graphics/Bitmap;IILandroid/content/res/AssetManager;)Ljava/lang/String;
.end method

.method public static recognize(Landroid/graphics/Bitmap;Z)Lorg/telegram/messenger/MrzRecognizer$Result;
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MrzRecognizer;->recognizeBarcode(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MrzRecognizer;->recognizeMRZ(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    nop

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/MrzRecognizer;->recognizeBarcode(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static recognize([BIII)Lorg/telegram/messenger/MrzRecognizer$Result;
    .locals 9

    .line 0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/telegram/messenger/MrzRecognizer;->setYuvBitmapPixels(Landroid/graphics/Bitmap;[B)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float v0, p0

    const v2, 0x3f343958    # 0.704f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v2, 0x5a

    const/4 v8, 0x0

    if-eq p3, v2, :cond_1

    const/16 v2, 0x10e

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p1, v2

    move v2, p1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz p3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr p2, p1

    move v3, p2

    :goto_3
    if-eqz p3, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    move v4, p0

    :goto_4
    if-eqz p3, :cond_5

    move v5, p0

    goto :goto_5

    :cond_5
    move v5, v0

    :goto_5
    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v8}, Lorg/telegram/messenger/MrzRecognizer;->recognize(Landroid/graphics/Bitmap;Z)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object p0

    return-object p0
.end method

.method private static recognizeBarcode(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/MrzRecognizer$Result;
    .locals 9

    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x44bb8000    # 1500.0f

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/vision/barcode/Barcode;

    iget v4, v3, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    const/16 v5, 0xc

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v4, v5, :cond_b

    iget-object v5, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    if-eqz v5, :cond_b

    new-instance p0, Lorg/telegram/messenger/MrzRecognizer$Result;

    invoke-direct {p0}, Lorg/telegram/messenger/MrzRecognizer$Result;-><init>()V

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    const-string v4, "ID"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v4, "CAN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "USA"

    if-nez v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "US"

    :goto_2
    iput-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v1, "CA"

    goto :goto_2

    :goto_3
    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v4, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iput v7, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    goto :goto_4

    :cond_6
    iput v2, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    :cond_7
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x0

    :cond_8
    :try_start_0
    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    add-int/lit8 v4, v6, 0x2

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    :cond_9
    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryYear:I

    iget-object v0, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    add-int/lit8 v1, v8, 0x2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryMonth:I

    iget-object v0, v3, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    add-int/lit8 v1, v6, 0x2

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    return-object p0

    :cond_b
    const/4 v5, 0x7

    if-ne v4, v5, :cond_c

    iget v4, v3, Lcom/google/android/gms/vision/barcode/Barcode;->format:I

    const/16 v5, 0x800

    if-ne v4, v5, :cond_c

    iget-object v4, v3, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    const-string v5, "^[A-Za-z0-9=]+$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :try_start_1
    iget-object v3, v3, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "windows-1251"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\\|"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-lt v4, v5, :cond_c

    new-instance v4, Lorg/telegram/messenger/MrzRecognizer$Result;

    invoke-direct {v4}, Lorg/telegram/messenger/MrzRecognizer$Result;-><init>()V

    iput v8, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    const-string v5, "RU"

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    aget-object v5, v3, v0

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    aget-object v5, v3, v7

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryYear:I

    aget-object v5, v3, v7

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryMonth:I

    aget-object v5, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    aget-object v5, v3, v8

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    aget-object v5, v3, v6

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    aget-object v5, v3, v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static recognizeMRZ(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/MrzRecognizer$Result;
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "   "

    const-string v2, "\n"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x6

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v15, 0x7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v5, 0x200

    const/4 v6, 0x1

    if-gt v4, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44000000    # 512.0f

    div-float/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->findCornerPoints(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    div-float v4, v14, v5

    if-eqz v3, :cond_4

    new-instance v5, Landroid/graphics/Point;

    aget v14, v3, v9

    aget v9, v3, v6

    invoke-direct {v5, v14, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Point;

    aget v14, v3, v10

    aget v10, v3, v12

    invoke-direct {v9, v14, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v10, Landroid/graphics/Point;

    aget v14, v3, v8

    aget v8, v3, v11

    invoke-direct {v10, v14, v8}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    aget v14, v3, v13

    aget v3, v3, v15

    invoke-direct {v8, v14, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v14, v5, Landroid/graphics/Point;->x:I

    if-ge v3, v14, :cond_2

    move-object/from16 v27, v10

    move-object v10, v8

    move-object/from16 v8, v27

    goto :goto_2

    :cond_2
    move-object/from16 v27, v9

    move-object v9, v5

    move-object/from16 v5, v27

    :goto_2
    iget v3, v5, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v14

    int-to-double v13, v3

    iget v3, v5, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v15

    int-to-double v11, v3

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    iget v3, v8, Landroid/graphics/Point;->x:I

    iget v13, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v13

    int-to-double v13, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v15

    int-to-double v6, v3

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v13

    int-to-double v13, v3

    iget v3, v10, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v15

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    int-to-double v1, v3

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    iget v3, v8, Landroid/graphics/Point;->x:I

    iget v13, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v13

    int-to-double v13, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget v15, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v15

    move/from16 v20, v4

    int-to-double v3, v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    div-double v13, v11, v1

    div-double/2addr v11, v3

    div-double v1, v6, v1

    div-double/2addr v6, v3

    const-wide v3, 0x3ff599999999999aL    # 1.35

    cmpl-double v15, v13, v3

    if-ltz v15, :cond_3

    const-wide/high16 v21, 0x3ffc000000000000L    # 1.75

    cmpg-double v15, v13, v21

    if-gtz v15, :cond_3

    cmpl-double v15, v1, v3

    if-ltz v15, :cond_3

    cmpg-double v15, v1, v21

    if-gtz v15, :cond_3

    cmpl-double v15, v11, v3

    if-ltz v15, :cond_3

    cmpg-double v15, v11, v21

    if-gtz v15, :cond_3

    cmpl-double v15, v6, v3

    if-ltz v15, :cond_3

    cmpg-double v3, v6, v21

    if-gtz v3, :cond_3

    add-double/2addr v13, v11

    add-double/2addr v13, v1

    add-double/2addr v13, v6

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    div-double/2addr v13, v1

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x400

    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/16 v11, 0x8

    new-array v12, v11, [F

    const/4 v11, 0x0

    aput v16, v12, v11

    const/4 v11, 0x1

    aput v16, v12, v11

    const/4 v11, 0x2

    aput v3, v12, v11

    const/4 v3, 0x3

    aput v16, v12, v3

    const/4 v3, 0x4

    aput v4, v12, v3

    const/4 v3, 0x5

    aput v6, v12, v3

    const/4 v3, 0x6

    aput v16, v12, v3

    const/4 v3, 0x7

    aput v7, v12, v3

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float v3, v3, v20

    iget v4, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float v4, v4, v20

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v20

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    iget v7, v8, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float v7, v7, v20

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float v8, v8, v20

    iget v9, v10, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float v9, v9, v20

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float v10, v10, v20

    const/16 v11, 0x8

    new-array v13, v11, [F

    const/4 v11, 0x0

    aput v3, v13, v11

    const/4 v3, 0x1

    aput v4, v13, v3

    const/4 v3, 0x2

    aput v6, v13, v3

    const/4 v3, 0x3

    aput v5, v13, v3

    const/4 v3, 0x4

    aput v7, v13, v3

    const/4 v3, 0x5

    aput v8, v13, v3

    const/4 v3, 0x6

    aput v9, v13, v3

    const/4 v3, 0x7

    aput v10, v13, v3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v23, 0x0

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v24, v12

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v0, v1

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x5dc

    if-gt v1, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    const/16 v13, 0x1e

    const/4 v6, 0x3

    if-ge v2, v6, :cond_d

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object v9, v1

    :goto_5
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v4, v7, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object v9, v4

    goto :goto_5

    :cond_7
    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v3, v6

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v4, v14, v5, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object v9, v4

    :goto_6
    if-eqz v9, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v0

    :goto_7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MrzRecognizer;->binarizeAndFindCharacters(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[[Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_9

    return-object v1

    :cond_9
    array-length v3, v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v3, :cond_b

    aget-object v7, v5, v6

    array-length v8, v7

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    array-length v7, v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    add-int/2addr v12, v7

    goto :goto_9

    :cond_a
    const/4 v7, 0x1

    :goto_9
    add-int/2addr v6, v7

    goto :goto_8

    :cond_b
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v12, v6, :cond_c

    if-lt v11, v13, :cond_c

    goto :goto_a

    :cond_c
    add-int/2addr v2, v7

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v6, 0x2

    :goto_a
    if-lt v11, v13, :cond_e

    if-ge v12, v6, :cond_f

    :cond_e
    move-object v0, v1

    goto/16 :goto_11

    :cond_f
    const/4 v0, 0x0

    aget-object v2, v5, v0

    array-length v0, v2

    const/16 v2, 0xa

    mul-int/lit8 v0, v0, 0xa

    array-length v3, v5

    const/16 v6, 0xf

    mul-int/lit8 v3, v3, 0xf

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    array-length v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v10, v9, :cond_11

    aget-object v12, v5, v10

    array-length v14, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_c
    if-ge v15, v14, :cond_10

    aget-object v13, v12, v15

    mul-int/lit8 v1, v16, 0xa

    move/from16 v17, v9

    mul-int/lit8 v9, v11, 0xf

    move-object/from16 v20, v12

    add-int/lit8 v12, v1, 0xa

    add-int/lit8 v2, v9, 0xf

    invoke-virtual {v8, v1, v9, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v4, v13, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    add-int/2addr v15, v1

    move/from16 v9, v17

    move-object/from16 v12, v20

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v6, 0xf

    const/16 v13, 0x1e

    goto :goto_c

    :cond_10
    move/from16 v17, v9

    const/4 v1, 0x1

    add-int/2addr v11, v1

    add-int/2addr v10, v1

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v6, 0xf

    const/16 v13, 0x1e

    goto :goto_b

    :cond_11
    array-length v1, v5

    const/4 v2, 0x0

    aget-object v3, v5, v2

    array-length v2, v3

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MrzRecognizer;->performRecognition(Landroid/graphics/Bitmap;IILandroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MrzRecognizer$Result;

    invoke-direct {v2}, Lorg/telegram/messenger/MrzRecognizer$Result;-><init>()V

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2d

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2d

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2d

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->rawMRZ:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MrzRecognizer;->getCountriesMap()Ljava/util/HashMap;

    move-result-object v1

    aget-object v4, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x50

    const-string v5, "<<"

    const/16 v6, 0xd

    const/16 v7, 0x31

    const/16 v8, 0x1b

    const/16 v9, 0x49

    const/16 v10, 0x20

    const/16 v11, 0x3c

    const/16 v12, 0x4f

    const/16 v13, 0x30

    if-ne v4, v3, :cond_1b

    const/4 v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v14, 0x2c

    if-ne v4, v14, :cond_2b

    aget-object v4, v0, v3

    const/4 v14, 0x5

    const/4 v15, 0x2

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    aget-object v4, v0, v3

    const/4 v15, 0x6

    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    aget-object v5, v0, v3

    invoke-virtual {v5, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    aget-object v5, v0, v3

    const/4 v14, 0x2

    add-int/2addr v4, v14

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    move-object/from16 v5, v18

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    :cond_13
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/16 v14, 0x9

    invoke-virtual {v5, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v10, v0, v4

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v10

    if-ne v5, v10, :cond_14

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    :cond_14
    aget-object v3, v0, v4

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    aget-object v3, v0, v4

    const/16 v5, 0x13

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v6

    aget-object v10, v0, v4

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v5

    if-ne v6, v5, :cond_15

    invoke-static {v3, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseBirthDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_15
    aget-object v3, v0, v4

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->parseGender(C)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    aget-object v3, v0, v4

    const/16 v5, 0x15

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-eq v5, v6, :cond_16

    aget-object v5, v0, v4

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_17

    :cond_16
    invoke-static {v3, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseExpiryDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_17
    iget-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    const-string v4, "RUS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_19

    const/4 v4, 0x3

    iput v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    iget-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v3

    invoke-static {v5}, Lorg/telegram/messenger/MrzRecognizer;->russianPassportTranslit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    array-length v3, v4

    const/4 v5, 0x1

    if-le v3, v5, :cond_18

    aget-object v3, v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->russianPassportTranslit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    :cond_18
    iget-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->russianPassportTranslit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->cyrillicToLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    goto :goto_d

    :cond_19
    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    const/16 v3, 0x38

    const/16 v4, 0x42

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    :cond_1a
    :goto_d
    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    goto/16 :goto_10

    :cond_1b
    if-eq v4, v9, :cond_1c

    const/16 v3, 0x41

    if-eq v4, v3, :cond_1c

    const/16 v3, 0x43

    if-ne v4, v3, :cond_1d

    :cond_1c
    const/4 v3, 0x2

    goto :goto_e

    :cond_1d
    const/4 v3, 0x0

    return-object v3

    :goto_e
    iput v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_22

    const/4 v14, 0x0

    aget-object v15, v0, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v6, 0x1e

    if-ne v15, v6, :cond_22

    aget-object v15, v0, v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v15, v6, :cond_22

    aget-object v4, v0, v14

    const/4 v6, 0x5

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    aget-object v3, v0, v14

    const/16 v4, 0xe

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v6

    aget-object v8, v0, v14

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v13

    if-ne v6, v8, :cond_1e

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    :cond_1e
    const/4 v3, 0x1

    aget-object v6, v0, v3

    const/4 v8, 0x6

    invoke-virtual {v6, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v14

    aget-object v15, v0, v3

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v8

    if-ne v14, v8, :cond_1f

    invoke-static {v6, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseBirthDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_1f
    aget-object v6, v0, v3

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->parseGender(C)I

    move-result v6

    iput v6, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    aget-object v6, v0, v3

    const/16 v8, 0x8

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v0, v3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v8

    if-eq v7, v8, :cond_20

    aget-object v7, v0, v3

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_21

    :cond_20
    invoke-static {v6, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseExpiryDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_21
    aget-object v3, v0, v3

    const/16 v4, 0x12

    const/16 v6, 0xf

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2a

    aget-object v5, v0, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    aget-object v0, v0, v3

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    goto/16 :goto_f

    :cond_22
    array-length v6, v0

    if-ne v6, v3, :cond_2a

    const/4 v6, 0x0

    aget-object v14, v0, v6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x24

    if-ne v14, v15, :cond_2a

    aget-object v14, v0, v6

    const/4 v15, 0x5

    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    const-string v3, "FRA"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-ne v4, v9, :cond_25

    aget-object v3, v0, v6

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v14, 0x44

    if-ne v3, v14, :cond_25

    const-string v3, "FRA"

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    aget-object v3, v0, v6

    const/16 v6, 0x1e

    const/4 v14, 0x5

    invoke-virtual {v3, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    aget-object v3, v0, v4

    const/16 v6, 0xd

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    aget-object v3, v0, v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v4

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-ne v5, v6, :cond_23

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    :cond_23
    aget-object v3, v0, v4

    const/16 v5, 0x21

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v4

    const/16 v7, 0x21

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-ne v5, v6, :cond_24

    invoke-static {v3, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseBirthDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_24
    aget-object v0, v0, v4

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->parseGender(C)I

    move-result v0

    iput v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    iput-boolean v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->doesNotExpire:Z

    goto/16 :goto_f

    :cond_25
    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    aget-object v5, v0, v3

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    aget-object v5, v0, v3

    const/4 v6, 0x2

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    :cond_26
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/16 v6, 0x9

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v10, v0, v4

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-ne v5, v6, :cond_27

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    :cond_27
    aget-object v3, v0, v4

    const/16 v5, 0xd

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    aget-object v3, v0, v4

    const/16 v6, 0x13

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v10, v0, v4

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-ne v5, v6, :cond_28

    invoke-static {v3, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseBirthDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_28
    aget-object v3, v0, v4

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->parseGender(C)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    aget-object v3, v0, v4

    const/16 v5, 0x15

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MrzRecognizer;->checksum(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MrzRecognizer;->getNumber(C)I

    move-result v6

    if-eq v5, v6, :cond_29

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_2a

    :cond_29
    invoke-static {v3, v2}, Lorg/telegram/messenger/MrzRecognizer;->parseExpiryDate(Ljava/lang/String;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    :cond_2a
    :goto_f
    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x38

    const/16 v4, 0x42

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MrzRecognizer;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    :cond_2b
    :goto_10
    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    return-object v0

    :cond_2c
    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    return-object v2

    :cond_2d
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method private static russianPassportTranslit(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    const-string v2, "ABVGDE2JZIQKLMNOPRSTUFHC34WXY9678"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v2, "\u0410\u0411\u0412\u0413\u0414\u0415\u0401\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042b\u042c\u042d\u042e\u042f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static native setYuvBitmapPixels(Landroid/graphics/Bitmap;[B)V
.end method
