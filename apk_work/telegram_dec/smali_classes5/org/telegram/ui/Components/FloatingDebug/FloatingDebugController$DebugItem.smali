.class public Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugItem"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field floatProperty:Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;

.field from:F

.field final title:Ljava/lang/CharSequence;

.field to:F

.field final type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->HEADER:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;FFLorg/telegram/ui/Components/AnimationProperties$FloatProperty;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->SEEKBAR:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    iput p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->from:F

    iput p3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->to:F

    iput-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->floatProperty:Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->SIMPLE:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    iput-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->action:Ljava/lang/Runnable;

    return-void
.end method
