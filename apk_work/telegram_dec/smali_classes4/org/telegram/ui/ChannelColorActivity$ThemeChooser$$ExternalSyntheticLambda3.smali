.class public final synthetic Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->$r8$lambda$1I8C7W5snQa2CJlZuOOFn1UcJR8(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
