.class Landroidx/sharetarget/ShareTargetCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sharetarget/ShareTargetCompat$TargetData;
    }
.end annotation


# instance fields
.field final mCategories:[Ljava/lang/String;

.field final mTargetClass:Ljava/lang/String;

.field final mTargetData:[Landroidx/sharetarget/ShareTargetCompat$TargetData;


# direct methods
.method constructor <init>([Landroidx/sharetarget/ShareTargetCompat$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sharetarget/ShareTargetCompat;->mTargetData:[Landroidx/sharetarget/ShareTargetCompat$TargetData;

    iput-object p2, p0, Landroidx/sharetarget/ShareTargetCompat;->mTargetClass:Ljava/lang/String;

    iput-object p3, p0, Landroidx/sharetarget/ShareTargetCompat;->mCategories:[Ljava/lang/String;

    return-void
.end method
