.class public final enum Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

.field public static final enum REPORT_ALWAYS:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

.field public static final enum REPORT_CLOSE:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

.field public static final enum REPORT_NORMAL:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    const-string v1, "REPORT_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->REPORT_NORMAL:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    new-instance v1, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    const-string v3, "REPORT_ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->REPORT_ALWAYS:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    new-instance v3, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    const-string v5, "REPORT_CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->REPORT_CLOSE:Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->$VALUES:[Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;
    .locals 1

    const-class v0, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    return-object p0
.end method

.method public static values()[Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;
    .locals 1

    sget-object v0, Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->$VALUES:[Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    invoke-virtual {v0}, [Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/wisesecurity/ucs/common/report/ReportOption;

    return-object v0
.end method
