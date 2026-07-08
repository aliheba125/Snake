.class public final Landroidx/appcompat/view/menu/h42;
.super Landroidx/appcompat/view/menu/cp1;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/appcompat/view/menu/d62;

.field public d:Landroidx/appcompat/view/menu/xs1;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Landroidx/appcompat/view/menu/bh1;

.field public final g:Landroidx/appcompat/view/menu/a82;

.field public final h:Ljava/util/List;

.field public final i:Landroidx/appcompat/view/menu/bh1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/cp1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    new-instance v0, Landroidx/appcompat/view/menu/a82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/a82;-><init>(Landroidx/appcompat/view/menu/cc;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->g:Landroidx/appcompat/view/menu/a82;

    new-instance v0, Landroidx/appcompat/view/menu/d62;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d62;-><init>(Landroidx/appcompat/view/menu/h42;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    new-instance v0, Landroidx/appcompat/view/menu/m42;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/m42;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/iz1;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->f:Landroidx/appcompat/view/menu/bh1;

    new-instance v0, Landroidx/appcompat/view/menu/i52;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/i52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/iz1;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->i:Landroidx/appcompat/view/menu/bh1;

    return-void
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    return-object p0
.end method

.method public static synthetic M(Landroidx/appcompat/view/menu/h42;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->Y()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic N(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/xs1;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    return-void
.end method

.method private final P(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/h42;->i:Landroidx/appcompat/view/menu/bh1;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/bh1;->b(J)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->Y()V

    return-void
.end method

.method private final f0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->i:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bh1;->a()V

    return-void
.end method

.method private final g0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->g:Landroidx/appcompat/view/menu/a82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a82;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->f:Landroidx/appcompat/view/menu/bh1;

    sget-object v1, Landroidx/appcompat/view/menu/si1;->L:Landroidx/appcompat/view/menu/us1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bh1;->b(J)V

    return-void
.end method

.method private final h0()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->K()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zs1;->C()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    move v3, v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Checking service availability"

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    const v3, 0xbdfcb8

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/x92;->u(I)I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    if-eq v2, v1, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_5

    const/16 v0, 0x9

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12

    if-eq v2, v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Unexpected service status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Service updating"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v4, "Service container out of date"

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/x92;->G0()I

    move-result v2

    const/16 v4, 0x4423

    if-ge v2, v4, :cond_7

    :goto_2
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_3

    :cond_7
    if-nez v0, :cond_2

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Service missing"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Service available"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->S()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/tu1;->w(Z)V

    :cond_b
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->e:Ljava/lang/Boolean;

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic i0(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/d62;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    return-object p0
.end method

.method public static synthetic k0(Landroidx/appcompat/view/menu/h42;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->f0()V

    return-void
.end method

.method public static synthetic l0(Landroidx/appcompat/view/menu/h42;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->Z()V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Landroidx/appcompat/view/menu/h42;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->g0()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final C(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/k52;

    invoke-direct {v1, p0, v0, p1}, Landroidx/appcompat/view/menu/k52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D(Landroidx/appcompat/view/menu/if1;)V
    .locals 8

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ft1;->E(Landroidx/appcompat/view/menu/if1;)Z

    move-result v5

    new-instance v6, Landroidx/appcompat/view/menu/if1;

    invoke-direct {v6, p1}, Landroidx/appcompat/view/menu/if1;-><init>(Landroidx/appcompat/view/menu/if1;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v4

    new-instance v0, Landroidx/appcompat/view/menu/v52;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/v52;-><init>(Landroidx/appcompat/view/menu/h42;ZLandroidx/appcompat/view/menu/cb2;ZLandroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/if1;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ft1;->F(Landroidx/appcompat/view/menu/oi1;)Z

    move-result v5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v4

    new-instance v0, Landroidx/appcompat/view/menu/p52;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/p52;-><init>(Landroidx/appcompat/view/menu/h42;ZLandroidx/appcompat/view/menu/cb2;ZLandroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F(Landroidx/appcompat/view/menu/hm1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/u42;

    invoke-direct {v1, p0, v0, p1}, Landroidx/appcompat/view/menu/u42;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;Landroidx/appcompat/view/menu/hm1;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Landroidx/appcompat/view/menu/hm1;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/x92;->u(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/x92;->U(Landroidx/appcompat/view/menu/hm1;[B)V

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/n52;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/appcompat/view/menu/n52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v5

    new-instance v0, Landroidx/appcompat/view/menu/z52;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/z52;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;Landroidx/appcompat/view/menu/hm1;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v5

    new-instance v0, Landroidx/appcompat/view/menu/k42;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/k42;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;ZLandroidx/appcompat/view/menu/hm1;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(Landroidx/appcompat/view/menu/xs1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->g0()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->f0()V

    return-void
.end method

.method public final K(Landroidx/appcompat/view/menu/xs1;Landroidx/appcompat/view/menu/r;Landroidx/appcompat/view/menu/cb2;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/16 v0, 0x64

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/ft1;->C(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v0, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/appcompat/view/menu/r;

    instance-of v8, v7, Landroidx/appcompat/view/menu/oi1;

    if-eqz v8, :cond_2

    :try_start_0
    check-cast v7, Landroidx/appcompat/view/menu/oi1;

    invoke-interface {p1, v7, p3}, Landroidx/appcompat/view/menu/xs1;->g0(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v8, v7, Landroidx/appcompat/view/menu/v92;

    if-eqz v8, :cond_3

    :try_start_1
    check-cast v7, Landroidx/appcompat/view/menu/v92;

    invoke-interface {p1, v7, p3}, Landroidx/appcompat/view/menu/xs1;->L0(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v9, "Failed to send user property to the service"

    invoke-virtual {v8, v9, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of v8, v7, Landroidx/appcompat/view/menu/if1;

    if-eqz v8, :cond_4

    :try_start_2
    check-cast v7, Landroidx/appcompat/view/menu/if1;

    invoke-interface {p1, v7, p3}, Landroidx/appcompat/view/menu/xs1;->o(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v9, "Failed to send conditional user property to the service"

    invoke-virtual {v8, v9, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final L(Landroidx/appcompat/view/menu/t32;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    new-instance v0, Landroidx/appcompat/view/menu/y42;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/y42;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/t32;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O(Landroidx/appcompat/view/menu/v92;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ft1;->G(Landroidx/appcompat/view/menu/v92;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/s42;

    invoke-direct {v2, p0, v1, v0, p1}, Landroidx/appcompat/view/menu/s42;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;ZLandroidx/appcompat/view/menu/v92;)V

    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Q(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/w42;

    invoke-direct {v1, p0, p1, v0}, Landroidx/appcompat/view/menu/w42;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final R(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/n42;

    invoke-direct {v1, p0, p1, v0, p2}, Landroidx/appcompat/view/menu/n42;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v7

    new-instance v0, Landroidx/appcompat/view/menu/t52;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/t52;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v7

    new-instance v0, Landroidx/appcompat/view/menu/x52;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroidx/appcompat/view/menu/x52;-><init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;Z)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ft1;->H()V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->e0()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/r52;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/r52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final V()Landroidx/appcompat/view/menu/hg1;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->Y()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to get consents; not connected to service yet."

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, v2}, Landroidx/appcompat/view/menu/xs1;->Q0(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/hg1;

    move-result-object v0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->g0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Failed to get consents; remote exception"

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final W()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final X()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ft1;->I()Z

    new-instance v1, Landroidx/appcompat/view/menu/g52;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/g52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Y()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h42;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->h0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d62;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->S()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/d62;->b(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final Z()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d62;->d()V

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/h42;->c:Landroidx/appcompat/view/menu/d62;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hf;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    return-void
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ft1;->H()V

    new-instance v1, Landroidx/appcompat/view/menu/q42;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/q42;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final b0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h42;->j0(Z)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/l52;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/l52;-><init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/h42;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h42;->d:Landroidx/appcompat/view/menu/xs1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final d0()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->h0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->G0()I

    move-result v0

    const v2, 0x310c4

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final e0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h42;->h0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->G0()I

    move-result v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->r0:Landroidx/appcompat/view/menu/us1;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final j0(Z)Landroidx/appcompat/view/menu/cb2;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->O()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/zs1;->B(Ljava/lang/String;)Landroidx/appcompat/view/menu/cb2;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->n()V

    return-void
.end method

.method public final bridge synthetic o()Landroidx/appcompat/view/menu/oh1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroidx/appcompat/view/menu/zs1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Landroidx/appcompat/view/menu/ft1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroidx/appcompat/view/menu/d02;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Landroidx/appcompat/view/menu/r32;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->s()Landroidx/appcompat/view/menu/r32;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Landroidx/appcompat/view/menu/h42;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Landroidx/appcompat/view/menu/y62;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->u()Landroidx/appcompat/view/menu/y62;

    move-result-object v0

    return-object v0
.end method
