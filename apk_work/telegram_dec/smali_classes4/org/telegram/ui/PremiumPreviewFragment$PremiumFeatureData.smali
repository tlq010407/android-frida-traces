.class public Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PremiumPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PremiumFeatureData"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final icon:I

.field public final title:Ljava/lang/CharSequence;

.field public final type:I

.field public yOffset:I


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    iput p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->icon:I

    iput-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->title:Ljava/lang/CharSequence;

    iput-object p4, p0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->description:Ljava/lang/String;

    return-void
.end method
