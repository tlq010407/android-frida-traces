.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda84;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda84;->f$0:I

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$9aDrYhlzt2T0T9Jo8bmFJ7EWryM(IJ)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    return-object p1
.end method
