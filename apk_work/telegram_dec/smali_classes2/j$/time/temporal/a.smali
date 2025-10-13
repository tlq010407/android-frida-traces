.class public final enum Lj$/time/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/l;


# static fields
.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum AMPM_OF_DAY:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum DAY_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum DAY_OF_WEEK:Lj$/time/temporal/a;

.field public static final enum DAY_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum EPOCH_DAY:Lj$/time/temporal/a;

.field public static final enum ERA:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum INSTANT_SECONDS:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lj$/time/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum NANO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum NANO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum OFFSET_SECONDS:Lj$/time/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_DAY:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lj$/time/temporal/a;

.field public static final enum YEAR:Lj$/time/temporal/a;

.field public static final enum YEAR_OF_ERA:Lj$/time/temporal/a;

.field private static final synthetic c:[Lj$/time/temporal/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj$/time/temporal/q;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    new-instance v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x3b9ac9ff

    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "NanoOfSecond"

    const-string v8, "NANO_OF_SECOND"

    invoke-direct {v0, v8, v6, v7, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    const-wide v7, 0x4e94914effffL

    invoke-static {v1, v2, v7, v8}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v7

    const/4 v8, 0x1

    const-string v9, "NanoOfDay"

    const-string v10, "NANO_OF_DAY"

    invoke-direct {v5, v10, v8, v9, v7}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v5, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    new-instance v7, Lj$/time/temporal/a;

    const-wide/32 v9, 0xf423f

    invoke-static {v1, v2, v9, v10}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v9

    const/4 v10, 0x2

    const-string v11, "MicroOfSecond"

    const-string v12, "MICRO_OF_SECOND"

    invoke-direct {v7, v12, v10, v11, v9}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v7, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v9, Lj$/time/temporal/a;

    const-wide v11, 0x141dd75fffL

    invoke-static {v1, v2, v11, v12}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v11

    const/4 v12, 0x3

    const-string v13, "MicroOfDay"

    const-string v14, "MICRO_OF_DAY"

    invoke-direct {v9, v14, v12, v13, v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v9, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    new-instance v11, Lj$/time/temporal/a;

    const-wide/16 v13, 0x3e7

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v13

    const/4 v14, 0x4

    const-string v15, "MilliOfSecond"

    const-string v12, "MILLI_OF_SECOND"

    invoke-direct {v11, v12, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v11, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    new-instance v12, Lj$/time/temporal/a;

    const-wide/32 v14, 0x5265bff

    invoke-static {v1, v2, v14, v15}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v14

    const/4 v15, 0x5

    const-string v13, "MilliOfDay"

    const-string v10, "MILLI_OF_DAY"

    invoke-direct {v12, v10, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v12, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    new-instance v10, Lj$/time/temporal/a;

    const-wide/16 v13, 0x3b

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v20

    const-string v19, "SecondOfMinute"

    const/16 v21, 0x0

    const-string v17, "SECOND_OF_MINUTE"

    const/16 v18, 0x6

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v10, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    move-object/from16 v18, v9

    const-wide/32 v8, 0x1517f

    invoke-static {v1, v2, v8, v9}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v8

    const/4 v9, 0x7

    const-string v6, "SecondOfDay"

    const-string v3, "SECOND_OF_DAY"

    invoke-direct {v15, v3, v9, v6, v8}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v15, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v26

    const-string v25, "MinuteOfHour"

    const/16 v27, 0x0

    const-string v23, "MINUTE_OF_HOUR"

    const/16 v24, 0x8

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v27}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v3, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    new-instance v4, Lj$/time/temporal/a;

    const-wide/16 v13, 0x59f

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v6

    const/16 v8, 0x9

    const-string v13, "MinuteOfDay"

    const-string v14, "MINUTE_OF_DAY"

    invoke-direct {v4, v14, v8, v13, v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v4, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    new-instance v6, Lj$/time/temporal/a;

    const-wide/16 v13, 0xb

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v13

    const/16 v14, 0xa

    const-string v8, "HourOfAmPm"

    const-string v9, "HOUR_OF_AMPM"

    invoke-direct {v6, v9, v14, v8, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v6, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v8, Lj$/time/temporal/a;

    move-object v9, v15

    const-wide/16 v14, 0x1

    const-wide/16 v1, 0xc

    invoke-static {v14, v15, v1, v2}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v13

    const/16 v1, 0xb

    const-string v2, "ClockHourOfAmPm"

    const-string v14, "CLOCK_HOUR_OF_AMPM"

    invoke-direct {v8, v14, v1, v2, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v8, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v2, Lj$/time/temporal/a;

    const-wide/16 v13, 0x17

    move-object/from16 v34, v2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v32

    const-string v31, "HourOfDay"

    const/16 v33, 0x0

    const-string v29, "HOUR_OF_DAY"

    const/16 v30, 0xc

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v34, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v1, Lj$/time/temporal/a;

    const-wide/16 v13, 0x18

    move-object/from16 v28, v3

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v13, v14}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v13

    const/16 v14, 0xd

    const-string v15, "ClockHourOfDay"

    const-string v2, "CLOCK_HOUR_OF_DAY"

    invoke-direct {v1, v2, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v2, Lj$/time/temporal/a;

    move-object v13, v4

    const-wide/16 v3, 0x1

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v3, v4}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v39

    const-string v38, "AmPmOfDay"

    const/16 v40, 0x0

    const-string v36, "AMPM_OF_DAY"

    const/16 v37, 0xe

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v40}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v2, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    const-wide/16 v14, 0x7

    move-object v4, v1

    move-object/from16 v31, v2

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v14, v15}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v45

    const-string v44, "DayOfWeek"

    const/16 v46, 0x0

    const-string v42, "DAY_OF_WEEK"

    const/16 v43, 0xf

    move-object/from16 v41, v3

    invoke-direct/range {v41 .. v46}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v3, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    new-instance v1, Lj$/time/temporal/a;

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v14, v15}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v4

    const/16 v2, 0x10

    const-string v3, "AlignedDayOfWeekInMonth"

    const-string v14, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    invoke-direct {v1, v14, v2, v3, v4}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v1, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    move-object/from16 v35, v3

    const-wide/16 v2, 0x7

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v2, v3}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v2

    const/16 v3, 0x11

    const-string v14, "AlignedDayOfWeekInYear"

    const-string v15, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    move-object/from16 v4, v35

    invoke-direct {v4, v15, v3, v14, v2}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v4, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    new-instance v2, Lj$/time/temporal/a;

    const-wide/16 v14, 0x1c

    move-object/from16 v43, v4

    const-wide/16 v3, 0x1f

    invoke-static {v14, v15, v3, v4}, Lj$/time/temporal/q;->j(JJ)Lj$/time/temporal/q;

    move-result-object v41

    const-string v40, "DayOfMonth"

    const/16 v42, 0x0

    const-string v38, "DAY_OF_MONTH"

    const/16 v39, 0x12

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v42}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    const-wide/16 v14, 0x16d

    move-object v4, v1

    const-wide/16 v1, 0x16e

    invoke-static {v14, v15, v1, v2}, Lj$/time/temporal/q;->j(JJ)Lj$/time/temporal/q;

    move-result-object v1

    const/16 v2, 0x13

    const-string v14, "DayOfYear"

    const-string v15, "DAY_OF_YEAR"

    invoke-direct {v3, v15, v2, v14, v1}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v3, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    new-instance v1, Lj$/time/temporal/a;

    const-wide v14, -0x550a98b312L

    move-object/from16 v38, v3

    const-wide v2, 0x550a98b312L

    invoke-static {v14, v15, v2, v3}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v2

    const/16 v3, 0x14

    const-string v14, "EpochDay"

    const-string v15, "EPOCH_DAY"

    invoke-direct {v1, v15, v3, v14, v2}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v1, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    new-instance v2, Lj$/time/temporal/a;

    const-wide/16 v14, 0x4

    move-object/from16 v40, v4

    const-wide/16 v3, 0x5

    invoke-static {v14, v15, v3, v4}, Lj$/time/temporal/q;->j(JJ)Lj$/time/temporal/q;

    move-result-object v3

    const/16 v4, 0x15

    const-string v14, "AlignedWeekOfMonth"

    const-string v15, "ALIGNED_WEEK_OF_MONTH"

    invoke-direct {v2, v15, v4, v14, v3}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v2, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    const-wide/16 v14, 0x35

    move-object/from16 v42, v5

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v14, v15}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v14

    const/16 v15, 0x16

    const-string v4, "AlignedWeekOfYear"

    const-string v5, "ALIGNED_WEEK_OF_YEAR"

    invoke-direct {v3, v5, v15, v4, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    new-instance v4, Lj$/time/temporal/a;

    move-object/from16 v27, v6

    const-wide/16 v5, 0xc

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v49

    const-string v48, "MonthOfYear"

    const/16 v50, 0x0

    const-string v46, "MONTH_OF_YEAR"

    const/16 v47, 0x17

    move-object/from16 v45, v4

    invoke-direct/range {v45 .. v50}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v4, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    const-wide v14, -0x2cb4177f4L

    move-object v6, v3

    const-wide v3, 0x2cb4177ffL

    invoke-static {v14, v15, v3, v4}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v3

    const/16 v4, 0x18

    const-string v14, "ProlepticMonth"

    const-string v15, "PROLEPTIC_MONTH"

    invoke-direct {v5, v15, v4, v14, v3}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v5, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    const-wide/32 v14, 0x3b9aca00

    move-object/from16 v46, v5

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v4, v5, v14, v15}, Lj$/time/temporal/q;->j(JJ)Lj$/time/temporal/q;

    move-result-object v14

    const/16 v15, 0x19

    const-string v4, "YearOfEra"

    const-string v5, "YEAR_OF_ERA"

    invoke-direct {v3, v5, v15, v4, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v3, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    new-instance v4, Lj$/time/temporal/a;

    const-wide/32 v14, -0x3b9ac9ff

    move-object/from16 v54, v6

    const-wide/32 v5, 0x3b9ac9ff

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v52

    const-string v51, "Year"

    const/16 v53, 0x0

    const-string v49, "YEAR"

    const/16 v50, 0x1a

    move-object/from16 v48, v4

    invoke-direct/range {v48 .. v53}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v4, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    move-object v6, v3

    move-object/from16 v20, v4

    const-wide/16 v3, 0x1

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v3, v4}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v59

    const-string v58, "Era"

    const/16 v60, 0x0

    const-string v56, "ERA"

    const/16 v57, 0x1b

    move-object/from16 v55, v5

    invoke-direct/range {v55 .. v60}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V

    sput-object v5, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    new-instance v3, Lj$/time/temporal/a;

    const-wide/high16 v14, -0x8000000000000000L

    move-object/from16 v21, v5

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v14, v15, v4, v5}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v4

    const/16 v5, 0x1c

    const-string v14, "InstantSeconds"

    const-string v15, "INSTANT_SECONDS"

    invoke-direct {v3, v15, v5, v14, v4}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    new-instance v4, Lj$/time/temporal/a;

    const-wide/32 v14, -0xfd20

    move-object/from16 v24, v6

    const-wide/32 v5, 0xfd20

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/q;->i(JJ)Lj$/time/temporal/q;

    move-result-object v5

    const/16 v6, 0x1d

    const-string v14, "OffsetSeconds"

    const-string v15, "OFFSET_SECONDS"

    invoke-direct {v4, v15, v6, v14, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V

    sput-object v4, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const/16 v5, 0x1e

    new-array v5, v5, [Lj$/time/temporal/a;

    const/4 v14, 0x0

    aput-object v0, v5, v14

    const/4 v0, 0x1

    aput-object v42, v5, v0

    const/4 v0, 0x2

    aput-object v7, v5, v0

    const/4 v0, 0x3

    aput-object v18, v5, v0

    const/4 v0, 0x4

    aput-object v11, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v9, v5, v0

    const/16 v0, 0x8

    aput-object v28, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v27, v5, v0

    const/16 v0, 0xb

    aput-object v8, v5, v0

    const/16 v0, 0xc

    aput-object v34, v5, v0

    const/16 v0, 0xd

    aput-object v33, v5, v0

    const/16 v0, 0xe

    aput-object v31, v5, v0

    const/16 v0, 0xf

    aput-object v32, v5, v0

    const/16 v0, 0x10

    aput-object v40, v5, v0

    const/16 v0, 0x11

    aput-object v43, v5, v0

    const/16 v0, 0x12

    aput-object v37, v5, v0

    const/16 v0, 0x13

    aput-object v38, v5, v0

    const/16 v0, 0x14

    aput-object v1, v5, v0

    const/16 v0, 0x15

    aput-object v2, v5, v0

    const/16 v0, 0x16

    aput-object v54, v5, v0

    const/16 v0, 0x17

    aput-object v45, v5, v0

    const/16 v0, 0x18

    aput-object v46, v5, v0

    const/16 v0, 0x19

    aput-object v24, v5, v0

    const/16 v0, 0x1a

    aput-object v20, v5, v0

    const/16 v0, 0x1b

    aput-object v21, v5, v0

    const/16 v0, 0x1c

    aput-object v3, v5, v0

    aput-object v4, v5, v6

    sput-object v5, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/q;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/a;
    .locals 1

    const-class v0, Lj$/time/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/a;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/a;
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    invoke-virtual {v0}, [Lj$/time/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final f()Lj$/time/temporal/q;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    return-object v0
.end method

.method public final h(Lj$/time/temporal/k;)J
    .locals 2

    invoke-interface {p1, p0}, Lj$/time/temporal/k;->h(Lj$/time/temporal/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Lj$/time/temporal/k;)Z
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/k;->k(Lj$/time/temporal/l;)Z

    move-result p1

    return p1
.end method

.method public final j(Lj$/time/temporal/k;)Lj$/time/temporal/q;
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/k;->f(Lj$/time/temporal/l;)Lj$/time/temporal/q;

    move-result-object p1

    return-object p1
.end method

.method public final k()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(J)I
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/l;)I

    move-result p1

    return p1
.end method

.method public final n(J)V
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/q;->b(JLj$/time/temporal/l;)V

    return-void
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    return-object v0
.end method
