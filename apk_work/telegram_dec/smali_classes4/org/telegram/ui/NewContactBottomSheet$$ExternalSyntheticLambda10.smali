.class public final synthetic Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/NewContactBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/NewContactBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iput-object p3, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/NewContactBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->$r8$lambda$NPcYO3ZoB0VIF8bqps71-uBNyAw(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
