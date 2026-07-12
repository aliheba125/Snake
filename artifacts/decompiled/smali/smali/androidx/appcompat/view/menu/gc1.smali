.class public final Landroidx/appcompat/view/menu/gc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/gg0;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ay;

.field public final b:I

.field public final c:Landroidx/appcompat/view/menu/r2;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ay;ILandroidx/appcompat/view/menu/r2;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gc1;->a:Landroidx/appcompat/view/menu/ay;

    iput p2, p0, Landroidx/appcompat/view/menu/gc1;->b:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/gc1;->c:Landroidx/appcompat/view/menu/r2;

    iput-wide p4, p0, Landroidx/appcompat/view/menu/gc1;->d:J

    iput-wide p6, p0, Landroidx/appcompat/view/menu/gc1;->e:J

    return-void
.end method

.method public static b(Landroidx/appcompat/view/menu/ay;ILandroidx/appcompat/view/menu/r2;)Landroidx/appcompat/view/menu/gc1;
    .locals 12

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/up0;->b()Landroidx/appcompat/view/menu/up0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/up0;->a()Landroidx/appcompat/view/menu/vp0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/vp0;->i()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/vp0;->k()Z

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ay;->w(Landroidx/appcompat/view/menu/r2;)Landroidx/appcompat/view/menu/tb1;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->u()Landroidx/appcompat/view/menu/m2$f;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/view/menu/z7;

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->u()Landroidx/appcompat/view/menu/m2$f;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/z7;->J()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/z7;->f()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2, v3, p1}, Landroidx/appcompat/view/menu/gc1;->c(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/z7;I)Landroidx/appcompat/view/menu/ff;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->F()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ff;->n()Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_0
    new-instance v11, Landroidx/appcompat/view/menu/gc1;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_1

    :cond_6
    move-wide v5, v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    :cond_7
    move-wide v7, v1

    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Landroidx/appcompat/view/menu/gc1;-><init>(Landroidx/appcompat/view/menu/ay;ILandroidx/appcompat/view/menu/r2;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static c(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/z7;I)Landroidx/appcompat/view/menu/ff;
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/z7;->H()Landroidx/appcompat/view/menu/ff;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ff;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ff;->f()[I

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ff;->i()[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/s4;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/s4;->a([II)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->s()I

    move-result p0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ff;->d()I

    move-result p2

    if-ge p0, p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/zy0;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/gc1;->a:Landroidx/appcompat/view/menu/ay;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ay;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/up0;->b()Landroidx/appcompat/view/menu/up0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/up0;->a()Landroidx/appcompat/view/menu/vp0;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vp0;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/gc1;->a:Landroidx/appcompat/view/menu/ay;

    iget-object v3, v0, Landroidx/appcompat/view/menu/gc1;->c:Landroidx/appcompat/view/menu/r2;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ay;->w(Landroidx/appcompat/view/menu/r2;)Landroidx/appcompat/view/menu/tb1;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->u()Landroidx/appcompat/view/menu/m2$f;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/view/menu/z7;

    if-nez v3, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->u()Landroidx/appcompat/view/menu/m2$f;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/z7;

    iget-wide v4, v0, Landroidx/appcompat/view/menu/gc1;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v8

    :goto_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/z7;->z()I

    move-result v19

    const/16 v9, 0x64

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vp0;->k()Z

    move-result v10

    and-int/2addr v4, v10

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vp0;->d()I

    move-result v10

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vp0;->f()I

    move-result v11

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vp0;->n()I

    move-result v1

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/z7;->J()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/z7;->f()Z

    move-result v12

    if-nez v12, :cond_7

    iget v4, v0, Landroidx/appcompat/view/menu/gc1;->b:I

    invoke-static {v2, v3, v4}, Landroidx/appcompat/view/menu/gc1;->c(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/z7;I)Landroidx/appcompat/view/menu/ff;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ff;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v3, v0, Landroidx/appcompat/view/menu/gc1;->d:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v8

    :goto_2
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ff;->d()I

    move-result v11

    move v4, v5

    :cond_7
    move v2, v10

    move v3, v11

    goto :goto_3

    :cond_8
    const/16 v10, 0x1388

    move v1, v8

    move v3, v9

    move v2, v10

    :goto_3
    iget-object v5, v0, Landroidx/appcompat/view/menu/gc1;->a:Landroidx/appcompat/view/menu/ay;

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/zy0;->m()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_9

    move v12, v8

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/zy0;->k()Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v9

    :goto_4
    move v12, v11

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/zy0;->h()Ljava/lang/Exception;

    move-result-object v8

    instance-of v9, v8, Landroidx/appcompat/view/menu/o2;

    if-eqz v9, :cond_c

    check-cast v8, Landroidx/appcompat/view/menu/o2;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/o2;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->d()Landroidx/appcompat/view/menu/ef;

    move-result-object v8

    if-nez v8, :cond_b

    move v8, v11

    goto :goto_5

    :cond_b
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result v8

    :goto_5
    move v12, v8

    move v8, v9

    goto :goto_6

    :cond_c
    const/16 v8, 0x65

    goto :goto_4

    :goto_6
    if-eqz v4, :cond_d

    iget-wide v6, v0, Landroidx/appcompat/view/menu/gc1;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-wide v15, v6

    iget-wide v6, v0, Landroidx/appcompat/view/menu/gc1;->e:J

    sub-long/2addr v13, v6

    long-to-int v4, v13

    move/from16 v20, v4

    move-wide v13, v15

    move-wide v15, v9

    goto :goto_7

    :cond_d
    move-wide v13, v6

    move-wide v15, v13

    move/from16 v20, v11

    :goto_7
    new-instance v4, Landroidx/appcompat/view/menu/nd0;

    iget v10, v0, Landroidx/appcompat/view/menu/gc1;->b:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v4

    move v11, v8

    invoke-direct/range {v9 .. v20}, Landroidx/appcompat/view/menu/nd0;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v14, v2

    move-object v11, v5

    move-object v12, v4

    move v13, v1

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroidx/appcompat/view/menu/ay;->E(Landroidx/appcompat/view/menu/nd0;IJI)V

    :cond_e
    :goto_8
    return-void
.end method
