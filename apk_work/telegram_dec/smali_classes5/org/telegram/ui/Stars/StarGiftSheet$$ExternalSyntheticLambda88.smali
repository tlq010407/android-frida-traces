.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;JJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$2:J

    iput-wide p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$3:J

    iput-wide p7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$4:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$2:J

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$3:J

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;->f$4:J

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$g3uK35h63pp-wd9pmhVr0UmgNEo(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;JJJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
