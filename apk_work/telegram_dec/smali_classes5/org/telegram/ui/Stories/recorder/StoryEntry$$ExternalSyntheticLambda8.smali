.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-void
.end method


# virtual methods
.method public final decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->$r8$lambda$-LPOWJxo20PNSUJsdJkiigxMu14(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
