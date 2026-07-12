.class public abstract Landroidx/appcompat/view/menu/q41;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/q41;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(J)J
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->i()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/q41;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->h()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    sget-object p1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    return-object p0
.end method

.method public static c(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    invoke-static {p0}, Landroidx/appcompat/view/menu/q41;->j(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->i()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    return-object v0
.end method

.method public static d(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "MMMMEEEEd"

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/q41;->b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static e()Landroidx/appcompat/view/menu/t01;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/q41;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/t01;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/t01;->c()Landroidx/appcompat/view/menu/t01;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static f()Ljava/util/TimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->e()Landroidx/appcompat/view/menu/t01;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/t01;->a()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->f()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static h()Landroid/icu/util/TimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q41;->j(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->f()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    return-object v0
.end method

.method public static k(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "yMMMM"

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/q41;->b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "yMMMMEEEEd"

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/q41;->b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method
