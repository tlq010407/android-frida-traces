.class public final synthetic Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

.field public final synthetic f$1:Lorg/telegram/messenger/AndroidUtilities$VcardItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/PhonebookShareAlert;->$r8$lambda$GZmo8Akk5YzD0XT0SQIOZyUc6xs(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
