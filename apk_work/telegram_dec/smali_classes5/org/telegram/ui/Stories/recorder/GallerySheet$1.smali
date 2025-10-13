.class Lorg/telegram/ui/Stories/recorder/GallerySheet$1;
.super Lorg/telegram/ui/Stories/recorder/GalleryListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GallerySheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZLjava/lang/String;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    move-object/from16 v0, p10

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->val$title:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->val$title:Ljava/lang/String;

    return-object v0
.end method
