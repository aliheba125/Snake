.class public abstract Landroidx/appcompat/view/menu/wx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/wx$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/m2;

.field public final d:Landroidx/appcompat/view/menu/m2$d;

.field public final e:Landroidx/appcompat/view/menu/r2;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Landroidx/appcompat/view/menu/zx;

.field public final i:Landroidx/appcompat/view/menu/bx0;

.field public final j:Landroidx/appcompat/view/menu/ay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/appcompat/view/menu/m2;Landroidx/appcompat/view/menu/m2$d;Landroidx/appcompat/view/menu/wx$a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 2
    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 3
    invoke-static {p5, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/wx;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/wx;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/wx;->c:Landroidx/appcompat/view/menu/m2;

    iput-object p4, p0, Landroidx/appcompat/view/menu/wx;->d:Landroidx/appcompat/view/menu/m2$d;

    .line 8
    iget-object p1, p5, Landroidx/appcompat/view/menu/wx$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Landroidx/appcompat/view/menu/wx;->f:Landroid/os/Looper;

    .line 9
    invoke-static {p3, p4, v1}, Landroidx/appcompat/view/menu/r2;->a(Landroidx/appcompat/view/menu/m2;Landroidx/appcompat/view/menu/m2$d;Ljava/lang/String;)Landroidx/appcompat/view/menu/r2;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/wx;->e:Landroidx/appcompat/view/menu/r2;

    .line 10
    new-instance p3, Landroidx/appcompat/view/menu/yb1;

    invoke-direct {p3, p0}, Landroidx/appcompat/view/menu/yb1;-><init>(Landroidx/appcompat/view/menu/wx;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/wx;->h:Landroidx/appcompat/view/menu/zx;

    iget-object p3, p0, Landroidx/appcompat/view/menu/wx;->a:Landroid/content/Context;

    .line 11
    invoke-static {p3}, Landroidx/appcompat/view/menu/ay;->x(Landroid/content/Context;)Landroidx/appcompat/view/menu/ay;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/wx;->j:Landroidx/appcompat/view/menu/ay;

    .line 12
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ay;->m()I

    move-result p4

    iput p4, p0, Landroidx/appcompat/view/menu/wx;->g:I

    .line 13
    iget-object p4, p5, Landroidx/appcompat/view/menu/wx$a;->a:Landroidx/appcompat/view/menu/bx0;

    iput-object p4, p0, Landroidx/appcompat/view/menu/wx;->i:Landroidx/appcompat/view/menu/bx0;

    if-eqz p2, :cond_1

    .line 14
    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 16
    invoke-static {p2, p3, p1}, Landroidx/appcompat/view/menu/hb1;->u(Landroid/app/Activity;Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/r2;)V

    .line 17
    :cond_1
    invoke-virtual {p3, p0}, Landroidx/appcompat/view/menu/ay;->b(Landroidx/appcompat/view/menu/wx;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/m2;Landroidx/appcompat/view/menu/m2$d;Landroidx/appcompat/view/menu/wx$a;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/wx;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/appcompat/view/menu/m2;Landroidx/appcompat/view/menu/m2$d;Landroidx/appcompat/view/menu/wx$a;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/ac$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ac$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ac$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ac$a;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/ac$a;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ac$a;->c(Ljava/util/Collection;)Landroidx/appcompat/view/menu/ac$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/wx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ac$a;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/ac$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/wx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ac$a;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/ac$a;

    return-object v0
.end method

.method public c(Landroidx/appcompat/view/menu/az0;)Landroidx/appcompat/view/menu/zy0;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/wx;->i(ILandroidx/appcompat/view/menu/az0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public final d()Landroidx/appcompat/view/menu/r2;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wx;->e:Landroidx/appcompat/view/menu/r2;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/wx;->g:I

    return v0
.end method

.method public final g(Landroid/os/Looper;Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/m2$f;
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/wx;->b()Landroidx/appcompat/view/menu/ac$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ac$a;->a()Landroidx/appcompat/view/menu/ac;

    move-result-object v4

    iget-object v0, p0, Landroidx/appcompat/view/menu/wx;->c:Landroidx/appcompat/view/menu/m2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m2;->a()Landroidx/appcompat/view/menu/m2$a;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/m2$a;

    iget-object v2, p0, Landroidx/appcompat/view/menu/wx;->a:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/wx;->d:Landroidx/appcompat/view/menu/m2$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/view/menu/m2$a;->b(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/wx;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/z7;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/z7;->P(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    instance-of p2, p1, Landroidx/appcompat/view/menu/bf0;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/bf0;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final h(Landroid/content/Context;Landroid/os/Handler;)Landroidx/appcompat/view/menu/mc1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/mc1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/wx;->b()Landroidx/appcompat/view/menu/ac$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ac$a;->a()Landroidx/appcompat/view/menu/ac;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/mc1;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/appcompat/view/menu/ac;)V

    return-object v0
.end method

.method public final i(ILandroidx/appcompat/view/menu/az0;)Landroidx/appcompat/view/menu/zy0;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v6}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/wx;->j:Landroidx/appcompat/view/menu/ay;

    iget-object v5, p0, Landroidx/appcompat/view/menu/wx;->i:Landroidx/appcompat/view/menu/bx0;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/ay;->D(Landroidx/appcompat/view/menu/wx;ILandroidx/appcompat/view/menu/az0;Landroidx/appcompat/view/menu/bz0;Landroidx/appcompat/view/menu/bx0;)V

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method
