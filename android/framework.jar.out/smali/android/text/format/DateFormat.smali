.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 584
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 585
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 586
    const/4 v1, 0x1

    .line 617
    :cond_0
    :goto_0
    return v1

    .line 589
    :cond_1
    const/4 v1, 0x0

    .line 592
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 593
    add-int/lit8 p2, p2, -0x1

    .line 595
    :goto_1
    if-ge p1, p2, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 598
    .local v0, c:C
    if-ne v0, v3, :cond_3

    .line 600
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 602
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 603
    add-int/lit8 p2, p2, -0x1

    .line 604
    add-int/lit8 v1, v1, 0x1

    .line 605
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 608
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 612
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 410
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 436
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 440
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 442
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 445
    const/4 v1, 0x1

    .line 446
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 448
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_1

    .line 449
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 450
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 442
    :cond_0
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 454
    :cond_1
    :goto_2
    add-int v7, v2, v1

    if-ge v7, v3, :cond_2

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_2

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 460
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 516
    const/4 v4, 0x0

    .line 520
    .local v4, replacement:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 521
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 522
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 523
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_1

    .line 462
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 463
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 467
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 468
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 471
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_2
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 472
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 475
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_3
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 476
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_3

    const/16 v7, 0x14

    :goto_4
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 480
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .end local v4           #replacement:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 476
    goto :goto_4

    .line 483
    .end local v6           #temp:I
    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 485
    .restart local v6       #temp:I
    if-nez v6, :cond_4

    .line 486
    const/16 v6, 0xc

    .line 488
    :cond_4
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 489
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 492
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_5
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 493
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 496
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 497
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 500
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_7
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 501
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 504
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 505
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 508
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 509
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 512
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 513
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 527
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_5
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 528
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 530
    :goto_5
    return-object v7

    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4d -> :sswitch_7
        0x61 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x73 -> :sswitch_8
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 421
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 423
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 425
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 560
    div-int/lit16 p0, p0, 0x3e8

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 564
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    neg-int p0, p0

    .line 570
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 571
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 573
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 567
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 290
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 366
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_0

    .line 367
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 369
    .local v6, index:I
    const/4 v2, 0x0

    .line 370
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 371
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 373
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-char v1, v0, v5

    .line 374
    .local v1, c:C
    if-nez v2, :cond_0

    if-ne v1, v12, :cond_0

    .line 375
    const/4 v2, 0x1

    .line 376
    aput-char v12, v8, v6

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 380
    :cond_0
    if-nez v3, :cond_1

    if-ne v1, v11, :cond_1

    .line 381
    const/4 v3, 0x1

    .line 382
    aput-char v11, v8, v6

    .line 383
    add-int/lit8 v6, v6, 0x1

    .line 386
    :cond_1
    if-nez v4, :cond_2

    if-ne v1, v13, :cond_2

    .line 387
    const/4 v4, 0x1

    .line 388
    aput-char v13, v8, v6

    .line 389
    add-int/lit8 v6, v6, 0x1

    .line 373
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 392
    .end local v1           #c:C
    :cond_3
    return-object v8

    .line 366
    nop

    :array_0
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    if-eqz p1, :cond_5

    .line 297
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 298
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 299
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 301
    .local v4, year:I
    if-ltz v1, :cond_5

    if-ltz v0, :cond_5

    if-ltz v4, :cond_5

    .line 302
    const v5, 0x1040081

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    .line 304
    if-ge v1, v0, :cond_0

    .line 305
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 333
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 307
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_1
    if-ge v1, v0, :cond_3

    .line 310
    if-ge v0, v4, :cond_2

    .line 311
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 313
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_3
    if-ge v1, v4, :cond_4

    .line 317
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 319
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 332
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_5
    const v5, 0x1040080

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 333
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 353
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 534
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 536
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 537
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    .line 538
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 539
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 542
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 253
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 256
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 257
    const v1, 0x104007e

    .line 262
    .local v1, res:I
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 259
    .end local v1           #res:I
    :cond_0
    const v1, 0x104007d

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 547
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 549
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 550
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 555
    :goto_0
    return-object v2

    .line 554
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 555
    .local v0, dst:Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #dst:Z
    :cond_1
    move v0, v2

    .line 554
    goto :goto_1
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 579
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 580
    .local v0, year:I
    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 210
    .local v1, locale:Ljava/util/Locale;
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    .end local v1           #locale:Ljava/util/Locale;
    :goto_0
    return v0

    .line 213
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_0
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 214
    :try_start_0
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_1

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    sget-boolean v0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 223
    .local v2, natural:Ljava/text/DateFormat;
    instance-of v7, v2, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_4

    move-object v4, v2

    .line 224
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 225
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 228
    const-string v5, "24"

    .line 236
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v8, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 237
    :try_start_2
    sput-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 238
    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v0

    :goto_2
    sput-boolean v7, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 239
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_2
    if-eqz v5, :cond_6

    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 243
    .local v0, b24:Z
    :goto_3
    goto :goto_0

    .line 230
    .end local v0           #b24:Z
    .restart local v1       #locale:Ljava/util/Locale;
    .restart local v2       #natural:Ljava/text/DateFormat;
    .restart local v3       #pattern:Ljava/lang/String;
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v5, "12"

    goto :goto_1

    .line 233
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_4
    const-string v5, "12"

    goto :goto_1

    :cond_5
    move v7, v6

    .line 238
    goto :goto_2

    .line 239
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_6
    move v0, v6

    .line 242
    goto :goto_3
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .locals 6
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 621
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 624
    new-array v0, p1, [C

    .line 626
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 627
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 630
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 632
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_1
    return-object v2
.end method
