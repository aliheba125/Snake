.class public final Landroidx/appcompat/view/menu/p32;
.super Landroidx/appcompat/view/menu/m82;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/m82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)[B
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "_r"

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v3, v1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->Q()V

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->f0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v15, v4}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B

    return-object v0

    :cond_0
    iget-object v3, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-string v5, "_iap"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_1

    const-string v3, "_iapx"

    iget-object v5, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v15, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/os1;->J()Landroidx/appcompat/view/menu/os1$a;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v11

    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    :try_start_1
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->r()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-object v0

    :cond_3
    :try_start_2
    invoke-static {}, Landroidx/appcompat/view/menu/ps1;->A3()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroidx/appcompat/view/menu/ps1$a;->h0(I)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/ps1$a;->J0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v9

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_4
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->v0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->v0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_5
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->b0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_6
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->Y(I)Landroidx/appcompat/view/menu/ps1$a;

    :cond_7
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->g0()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->e0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->c0()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->T(J)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_0

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v9, v5}, Landroidx/appcompat/view/menu/ps1$a;->D(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_9
    :goto_0
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->p0()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->t0(J)Landroidx/appcompat/view/menu/ps1$a;

    iget-object v3, v1, Landroidx/appcompat/view/menu/g82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v3, v15}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->a0()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->N(J)Landroidx/appcompat/view/menu/ps1$a;

    iget-object v5, v1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v5

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/qf1;->K(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v9, v14}, Landroidx/appcompat/view/menu/ps1$a;->u0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_a
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lz1;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroidx/appcompat/view/menu/ps1$a;->j0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->q()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->s()Landroidx/appcompat/view/menu/p62;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroidx/appcompat/view/menu/p62;->z(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->q()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_b

    :try_start_3
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v0, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/appcompat/view/menu/p32;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroidx/appcompat/view/menu/ps1$a;->L0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_b

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v9, v5}, Landroidx/appcompat/view/menu/ps1$a;->Q(Z)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-object v0

    :cond_b
    :goto_1
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/dz1;->o()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v5}, Landroidx/appcompat/view/menu/ps1$a;->r0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/dz1;->o()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->H0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ci1;->v()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->p0(I)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ci1;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->O0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-wide v5, v0, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/p32;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->P(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_c
    :goto_2
    :try_start_7
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->B0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_d
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/lg1;->M0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/z92;

    const-string v8, "_lte"

    iget-object v10, v7, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_3

    :cond_f
    move-object v7, v14

    :goto_3
    const-wide/16 v23, 0x0

    if-eqz v7, :cond_10

    iget-object v6, v7, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    if-nez v6, :cond_11

    :cond_10
    new-instance v6, Landroidx/appcompat/view/menu/z92;

    const-string v18, "auto"

    const-string v19, "_lte"

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v7

    invoke-interface {v7}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v20

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v22}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    :cond_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/appcompat/view/menu/ts1;

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_12

    invoke-static {}, Landroidx/appcompat/view/menu/ts1;->X()Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/z92;

    iget-object v7, v7, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/ts1$a;->u(Ljava/lang/String;)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/z92;

    iget-wide v7, v7, Landroidx/appcompat/view/menu/z92;->d:J

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/ts1$a;->w(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/z92;

    iget-object v8, v8, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Landroidx/appcompat/view/menu/i92;->U(Landroidx/appcompat/view/menu/ts1$a;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/q02;

    check-cast v6, Landroidx/appcompat/view/menu/ts1;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_12
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->a0(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/appcompat/view/menu/i92;->T(Landroidx/appcompat/view/menu/ps1$a;)V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Landroidx/appcompat/view/menu/g82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v3, v11, v9}, Landroidx/appcompat/view/menu/o82;->v(Landroidx/appcompat/view/menu/rw1;Landroidx/appcompat/view/menu/ps1$a;)V

    :cond_13
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/wt1;->b(Landroidx/appcompat/view/menu/oi1;)Landroidx/appcompat/view/menu/wt1;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v4

    iget-object v5, v3, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroidx/appcompat/view/menu/lg1;->A0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/x92;->M(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroidx/appcompat/view/menu/qf1;->y(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/appcompat/view/menu/x92;->V(Landroidx/appcompat/view/menu/wt1;I)V

    iget-object v10, v3, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    const-string v3, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v10, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_o"

    iget-object v6, v0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    invoke-virtual {v10, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/x92;->F0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    const-string v6, "_dbg"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v10, v6, v7}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v10, v2, v4}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v2

    if-nez v2, :cond_15

    new-instance v17, Landroidx/appcompat/view/menu/gi1;

    iget-object v4, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-wide v2, v0, Landroidx/appcompat/view/menu/oi1;->p:J

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v25, v2

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v9, v25

    move-object/from16 v25, v11

    move-wide/from16 v11, v18

    move-object/from16 v29, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v2 .. v16}, Landroidx/appcompat/view/menu/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v12, v17

    move-wide/from16 v9, v23

    goto :goto_5

    :cond_15
    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v25, v11

    move-object/from16 v29, v13

    move-object/from16 v18, v14

    iget-wide v3, v2, Landroidx/appcompat/view/menu/gi1;->f:J

    iget-wide v5, v0, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/view/menu/gi1;->a(J)Landroidx/appcompat/view/menu/gi1;

    move-result-object v17

    move-wide v9, v3

    move-object/from16 v12, v17

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroidx/appcompat/view/menu/lg1;->U(Landroidx/appcompat/view/menu/gi1;)V

    new-instance v13, Landroidx/appcompat/view/menu/hh1;

    iget-object v3, v1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    iget-object v4, v0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iget-object v6, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iget-wide v7, v0, Landroidx/appcompat/view/menu/oi1;->p:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v28

    invoke-direct/range {v2 .. v11}, Landroidx/appcompat/view/menu/hh1;-><init>(Landroidx/appcompat/view/menu/cx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ks1;->Z()Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v2

    iget-wide v3, v13, Landroidx/appcompat/view/menu/hh1;->d:J

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/ks1$a;->B(J)Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v2

    iget-object v3, v13, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ks1$a;->z(Ljava/lang/String;)Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v2

    iget-wide v3, v13, Landroidx/appcompat/view/menu/hh1;->e:J

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/ks1$a;->v(J)Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v2

    iget-object v3, v13, Landroidx/appcompat/view/menu/hh1;->f:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ei1;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v5

    iget-object v6, v13, Landroidx/appcompat/view/menu/hh1;->f:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/ei1;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroidx/appcompat/view/menu/i92;->S(Landroidx/appcompat/view/menu/ms1$a;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/ks1$a;->w(Landroidx/appcompat/view/menu/ms1$a;)Landroidx/appcompat/view/menu/ks1$a;

    goto :goto_6

    :cond_17
    move-object/from16 v3, v27

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/ps1$a;->y(Landroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/qs1;->G()Landroidx/appcompat/view/menu/qs1$b;

    move-result-object v5

    invoke-static {}, Landroidx/appcompat/view/menu/ls1;->G()Landroidx/appcompat/view/menu/ls1$a;

    move-result-object v6

    iget-wide v7, v12, Landroidx/appcompat/view/menu/gi1;->c:J

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/ls1$a;->r(J)Landroidx/appcompat/view/menu/ls1$a;

    move-result-object v6

    iget-object v0, v0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroidx/appcompat/view/menu/ls1$a;->s(Ljava/lang/String;)Landroidx/appcompat/view/menu/ls1$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/appcompat/view/menu/qs1$b;->r(Landroidx/appcompat/view/menu/ls1$a;)Landroidx/appcompat/view/menu/qs1$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/ps1$a;->z(Landroidx/appcompat/view/menu/qs1$b;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->p()Landroidx/appcompat/view/menu/we2;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ps1$a;->U0()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/view/menu/we2;->z(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ps1$a;->C(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ks1$a;->H()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->q0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->Z(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_18
    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->i0()J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-eqz v0, :cond_19

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->i0(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_19
    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->m0()J

    move-result-wide v6

    cmp-long v2, v6, v23

    if-eqz v2, :cond_1a

    invoke-virtual {v3, v6, v7}, Landroidx/appcompat/view/menu/ps1$a;->m0(J)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_7

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->m0(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_1b
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/si1;->y0:Landroidx/appcompat/view/menu/us1;

    move-object/from16 v5, p2

    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1d

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ps1$a;->M0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_8

    :cond_1c
    move-object/from16 v5, p2

    :cond_1d
    :goto_8
    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->p()V

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/rw1;->k0()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ps1$a;->d0(I)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v0

    const-wide/32 v6, 0x14051

    invoke-virtual {v0, v6, v7}, Landroidx/appcompat/view/menu/ps1$a;->A0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/appcompat/view/menu/ps1$a;->x0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ps1$a;->W(Z)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->C0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Landroidx/appcompat/view/menu/g82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/o82;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/ps1$a;)V

    :cond_1e
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/os1$a;->s(Landroidx/appcompat/view/menu/ps1$a;)Landroidx/appcompat/view/menu/os1$a;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ps1$a;->R()J

    move-result-wide v6

    move-object/from16 v2, v25

    invoke-virtual {v2, v6, v7}, Landroidx/appcompat/view/menu/rw1;->j0(J)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ps1$a;->L()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/rw1;->f0(J)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/os1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ax1;->h()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/i92;->g0([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v18

    :goto_9
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-object v0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw v0
.end method
