.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback3Return;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->$r8$lambda$QBQ0un2FrHxdCRyZH3sau1YHD8Q(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
