.class public Lcom/huawei/hms/maps/mae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/mae;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/maps/mae;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/huawei/hms/maps/mae;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/huawei/hms/maps/mae;Z)Z
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/huawei/hms/maps/mae;->a:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    new-instance v0, Lcom/huawei/hms/maps/mae$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/maps/mae$1;-><init>(Lcom/huawei/hms/maps/mae;Landroid/view/View;)V

    return-object v0
.end method
