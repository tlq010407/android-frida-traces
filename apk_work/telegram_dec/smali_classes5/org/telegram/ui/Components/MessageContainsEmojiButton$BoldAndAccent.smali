.class Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessageContainsEmojiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoldAndAccent"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->access$000(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
