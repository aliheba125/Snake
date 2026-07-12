.class public Landroidx/appcompat/view/menu/r10$g;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/r10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "$GPGSV,1,1,04,12,05,159,36,15,41,087,15,19,38,262,30,31,56,146,19,*73"

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroidx/appcompat/view/menu/v90;->a:Landroidx/appcompat/view/menu/go0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/go0;->p()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/od0;->c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Landroidx/appcompat/view/menu/v90;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 p3, 0x0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object p2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/view/menu/nv0;->i(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss:SS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p6;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/p6;->c(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p6;->e()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/p6;->c(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroidx/appcompat/view/menu/p6;->f(Landroidx/appcompat/view/menu/p6;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroidx/appcompat/view/menu/p6;->i(Landroidx/appcompat/view/menu/p6;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "$GPGGA,%s,%s,%s,%s,%s,1,%s,692,.00,M,.00,M,,,"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, p3

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v9, 0x2

    aput-object v4, v7, v9

    const/4 v10, 0x3

    aput-object v3, v7, v10

    const/4 v10, 0x4

    aput-object v5, v7, v10

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p6;->b()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v10, "satellites"

    invoke-virtual {p2, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v10, 0x5

    aput-object p2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/p6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "$GPRMC,%s,A,%s,%s,%s,%s,0,0,260717,,,A,"

    filled-new-array {v1, v2, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/p6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/v90;->c:Landroidx/appcompat/view/menu/go0$d;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p3

    aput-object v0, v3, v8

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/appcompat/view/menu/w90;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p3

    aput-object v0, v3, v8

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/w90;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p3

    aput-object p2, v2, v8

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroidx/appcompat/view/menu/w90;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p3

    const-string v2, "$GPVTG,0,T,0,M,0,N,0,K,A,*25"

    aput-object v2, v0, v8

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroidx/appcompat/view/menu/w90;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p3

    aput-object v1, v0, v8

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroidx/appcompat/view/menu/w90;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "$GPGSA,A,2,12,15,19,31,,,,,,,,,604,712,986,*27"

    aput-object p3, v0, v8

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
