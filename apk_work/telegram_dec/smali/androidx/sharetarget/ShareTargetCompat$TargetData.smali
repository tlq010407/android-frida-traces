.class Landroidx/sharetarget/ShareTargetCompat$TargetData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sharetarget/ShareTargetCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetData"
.end annotation


# instance fields
.field final mHost:Ljava/lang/String;

.field final mMimeType:Ljava/lang/String;

.field final mPath:Ljava/lang/String;

.field final mPathPattern:Ljava/lang/String;

.field final mPathPrefix:Ljava/lang/String;

.field final mPort:Ljava/lang/String;

.field final mScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mScheme:Ljava/lang/String;

    iput-object p2, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mHost:Ljava/lang/String;

    iput-object p3, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mPort:Ljava/lang/String;

    iput-object p4, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mPath:Ljava/lang/String;

    iput-object p5, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mPathPattern:Ljava/lang/String;

    iput-object p6, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mPathPrefix:Ljava/lang/String;

    iput-object p7, p0, Landroidx/sharetarget/ShareTargetCompat$TargetData;->mMimeType:Ljava/lang/String;

    return-void
.end method
