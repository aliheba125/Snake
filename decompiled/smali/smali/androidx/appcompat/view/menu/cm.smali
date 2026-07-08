.class public abstract Landroidx/appcompat/view/menu/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/my0;

.field public static final b:Landroidx/appcompat/view/menu/my0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/cm;->a:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/cm;->b:Landroidx/appcompat/view/menu/my0;

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/cm;->a:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final b(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)V
    .locals 5

    instance-of v0, p0, Landroidx/appcompat/view/menu/bm;

    if-eqz v0, :cond_5

    check-cast p0, Landroidx/appcompat/view/menu/bm;

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/rd;->c(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bm;->p:Landroidx/appcompat/view/menu/nh;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bm;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nh;->D(Landroidx/appcompat/view/menu/kh;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Landroidx/appcompat/view/menu/bm;->r:Ljava/lang/Object;

    iput v1, p0, Landroidx/appcompat/view/menu/dm;->o:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/bm;->p:Landroidx/appcompat/view/menu/nh;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bm;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/view/menu/nh;->A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/j01;->a:Landroidx/appcompat/view/menu/j01;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j01;->a()Landroidx/appcompat/view/menu/bp;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bp;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Landroidx/appcompat/view/menu/bm;->r:Ljava/lang/Object;

    iput v1, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/bp;->H(Landroidx/appcompat/view/menu/dm;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bp;->J(Z)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bm;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q60;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/q60;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/q60;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/bm;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/bm;->q:Landroidx/appcompat/view/menu/xg;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bm;->s:Ljava/lang/Object;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/i01;->c(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/i01;->a:Landroidx/appcompat/view/menu/my0;

    if-eq v2, v4, :cond_3

    invoke-static {p2, v3, v2}, Landroidx/appcompat/view/menu/lh;->f(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)Landroidx/appcompat/view/menu/m31;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/bm;->q:Landroidx/appcompat/view/menu/xg;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/i01;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bp;->N()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bp;->F(Z)V

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/i01;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 p2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/dm;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bp;->F(Z)V

    throw p0

    :cond_5
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/cm;->b(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)V

    return-void
.end method
