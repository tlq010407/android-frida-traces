.class public final synthetic Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$4:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroid/content/Context;

.field public final synthetic f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$1:I

    iput-wide p3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p6, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$4:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iput-wide p7, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$5:J

    iput-boolean p9, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$6:Z

    iput-object p10, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$7:Landroid/content/Context;

    iput-object p11, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p12, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$9:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget v2, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$1:I

    iget-wide v3, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$2:J

    iget-object v5, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$4:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-wide v7, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$5:J

    iget-boolean v9, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$6:Z

    iget-object v10, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$7:Landroid/content/Context;

    iget-object v11, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v12, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;->f$9:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v1 .. v14}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->$r8$lambda$CNUSHoXx-s3X85hx4PJhdmecPzw(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
