.class public final synthetic Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PreviewView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->$r8$lambda$z4tam59nbvyNSyWBG8zNmsnMtUA(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    return-void
.end method
