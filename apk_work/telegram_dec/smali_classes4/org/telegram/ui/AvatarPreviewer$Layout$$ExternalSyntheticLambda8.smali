.class public final synthetic Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/AvatarPreviewer$Layout;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/AvatarPreviewer$Layout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->$r8$lambda$K2HErQZMCFNeN1jZx0BoQlosxcA(Lorg/telegram/ui/AvatarPreviewer$Layout;Landroid/graphics/Bitmap;)V

    return-void
.end method
