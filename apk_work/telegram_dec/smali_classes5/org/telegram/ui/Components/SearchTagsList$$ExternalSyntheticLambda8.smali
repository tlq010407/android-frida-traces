.class public final synthetic Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Reaction;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput p2, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$Reaction;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/SearchTagsList;->$r8$lambda$4wvGjXhRjmG_WOflWr5b0apO6zw(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
