.class Lorg/telegram/ui/Components/MsgClockDrawable$1;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MsgClockDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MsgClockDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MsgClockDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MsgClockDrawable$1;->this$0:Lorg/telegram/ui/Components/MsgClockDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/MsgClockDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/MsgClockDrawable;-><init>()V

    return-object v0
.end method
