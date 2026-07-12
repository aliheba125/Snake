.class public final Landroidx/appcompat/view/menu/zs1;
.super Landroidx/appcompat/view/menu/cp1;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:Ljava/util/List;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;J)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/cp1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/zs1;->p:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/zs1;->q:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/zs1;->i:J

    return-void
.end method

.method private final J()Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroidx/appcompat/view/menu/xd2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->n0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1

    :catch_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->N()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :catch_2
    return-object v1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final B(Ljava/lang/String;)Landroidx/appcompat/view/menu/cb2;
    .locals 46

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tu1;->J()Landroidx/appcompat/view/menu/lz1;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->S0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tu1;->I()Landroidx/appcompat/view/menu/fh1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fh1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v3

    :goto_0
    move-object/from16 v39, v2

    move/from16 v38, v3

    goto :goto_1

    :cond_0
    const-string v2, ""

    const/16 v3, 0x64

    goto :goto_0

    :goto_1
    new-instance v2, Landroidx/appcompat/view/menu/cb2;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v7, v0, Landroidx/appcompat/view/menu/zs1;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->D()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v3, v0, Landroidx/appcompat/view/menu/zs1;->f:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Landroidx/appcompat/view/menu/zs1;->f:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-wide v3, v0, Landroidx/appcompat/view/menu/zs1;->h:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v4, v15}, Landroidx/appcompat/view/menu/x92;->z(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/appcompat/view/menu/zs1;->h:J

    :cond_1
    iget-wide v3, v0, Landroidx/appcompat/view/menu/zs1;->h:J

    iget-object v15, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v15

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/tu1;->r:Z

    xor-int/lit8 v17, v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v15, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v15

    const/16 v18, 0x0

    if-nez v15, :cond_2

    move-object/from16 v19, v18

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    :goto_2
    const-wide/16 v20, 0x0

    iget-object v15, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v11

    iget-object v11, v11, Landroidx/appcompat/view/menu/tu1;->e:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v11

    cmp-long v24, v11, v13

    if-nez v24, :cond_3

    iget-wide v11, v15, Landroidx/appcompat/view/menu/cx1;->H:J

    :goto_3
    move-wide/from16 v26, v11

    goto :goto_4

    :cond_3
    iget-wide v13, v15, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->C()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/qf1;->P()Z

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/tu1;->F()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "deferred_analytics_collection"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v11

    const-string v12, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v11, v12}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    if-nez v11, :cond_4

    move-object/from16 v32, v18

    goto :goto_5

    :cond_4
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v32, v11

    :goto_5
    iget-wide v14, v0, Landroidx/appcompat/view/menu/zs1;->i:J

    iget-object v11, v0, Landroidx/appcompat/view/menu/zs1;->j:Ljava/util/List;

    const/16 v33, 0x0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->v()Ljava/lang/String;

    move-result-object v1

    iget-object v12, v0, Landroidx/appcompat/view/menu/zs1;->k:Ljava/lang/String;

    if-nez v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/x92;->S0()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroidx/appcompat/view/menu/zs1;->k:Ljava/lang/String;

    :cond_5
    iget-object v12, v0, Landroidx/appcompat/view/menu/zs1;->k:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v34

    if-eqz v34, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v13

    move-wide/from16 v35, v3

    sget-object v3, Landroidx/appcompat/view/menu/si1;->x0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v13, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-wide v3, v0, Landroidx/appcompat/view/menu/zs1;->p:J

    const-wide/16 v24, 0x0

    cmp-long v3, v3, v24

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v3

    invoke-interface {v3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v3

    move-object v13, v11

    move-object/from16 v37, v12

    iget-wide v11, v0, Landroidx/appcompat/view/menu/zs1;->p:J

    sub-long/2addr v3, v11

    iget-object v11, v0, Landroidx/appcompat/view/menu/zs1;->o:Ljava/lang/String;

    if-eqz v11, :cond_7

    const-wide/32 v11, 0x5265c00

    cmp-long v3, v3, v11

    if-lez v3, :cond_7

    iget-object v3, v0, Landroidx/appcompat/view/menu/zs1;->q:Ljava/lang/String;

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->I()V

    goto :goto_6

    :cond_6
    move-object v13, v11

    move-object/from16 v37, v12

    :cond_7
    :goto_6
    iget-object v3, v0, Landroidx/appcompat/view/menu/zs1;->o:Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->I()V

    :cond_8
    iget-object v3, v0, Landroidx/appcompat/view/menu/zs1;->o:Ljava/lang/String;

    goto :goto_9

    :cond_9
    :goto_7
    move-object v13, v11

    move-object/from16 v37, v12

    const-wide/16 v24, 0x0

    goto :goto_8

    :cond_a
    move-wide/from16 v35, v3

    goto :goto_7

    :goto_8
    move-object/from16 v3, v18

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    const-string v11, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {v4, v11}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_b

    const/16 v40, 0x0

    goto :goto_a

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v40, v4

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/zs1;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/appcompat/view/menu/x92;->z0(Ljava/lang/String;)J

    move-result-wide v41

    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    sget-object v11, Landroidx/appcompat/view/menu/si1;->M0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v4, v11}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    invoke-static {}, Landroidx/appcompat/view/menu/x92;->y0()I

    move-result v4

    move/from16 v43, v4

    goto :goto_b

    :cond_c
    const/16 v43, 0x0

    :goto_b
    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    sget-object v11, Landroidx/appcompat/view/menu/si1;->M0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v4, v11}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/x92;->I0()J

    move-result-wide v11

    move-wide/from16 v44, v11

    :goto_c
    move-wide/from16 v24, v35

    goto :goto_d

    :cond_d
    move-wide/from16 v44, v24

    goto :goto_c

    :goto_d
    move-object v4, v2

    move-object/from16 v34, v13

    move-object/from16 v35, v37

    const-wide/32 v11, 0x14051

    move-wide/from16 v36, v14

    move-wide/from16 v13, v24

    move-object/from16 v15, p1

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v26

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    move-wide/from16 v28, v36

    move-object/from16 v30, v34

    move-object/from16 v31, v33

    move-object/from16 v32, v1

    move-object/from16 v33, v35

    move-object/from16 v34, v3

    move/from16 v35, v40

    move-wide/from16 v36, v41

    move/from16 v40, v43

    move-wide/from16 v41, v44

    invoke-direct/range {v4 .. v42}, Landroidx/appcompat/view/menu/cb2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V

    return-object v2
.end method

.method public final C()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget v0, p0, Landroidx/appcompat/view/menu/zs1;->l:I

    return v0
.end method

.method public final D()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget v0, p0, Landroidx/appcompat/view/menu/zs1;->e:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->c:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->j:Ljava/util/List;

    return-object v0
.end method

.method public final I()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->J()Landroidx/appcompat/view/menu/lz1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/lz1;->l(Landroidx/appcompat/view/menu/lz1$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Analytics Storage consent is not granted"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/x92;->U0()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%032x"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    const-string v3, "not null"

    :goto_1
    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Resetting session stitching token to %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/zs1;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/zs1;->p:J

    return-void
.end method

.method public final K(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zs1;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/zs1;->q:Ljava/lang/String;

    return v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
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

.method public final y()V
    .locals 11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "unknown"

    const-string v5, "Unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v0}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v5

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    invoke-static {v0}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v4, :cond_2

    const-string v4, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v3

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v5

    :goto_2
    :try_start_2
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v5

    move-object v5, v8

    goto :goto_3

    :catch_2
    move-object v7, v5

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    invoke-static {v0}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v7

    :goto_4
    iput-object v0, p0, Landroidx/appcompat/view/menu/zs1;->c:Ljava/lang/String;

    iput-object v4, p0, Landroidx/appcompat/view/menu/zs1;->f:Ljava/lang/String;

    iput-object v5, p0, Landroidx/appcompat/view/menu/zs1;->d:Ljava/lang/String;

    iput v6, p0, Landroidx/appcompat/view/menu/zs1;->e:I

    iput-object v8, p0, Landroidx/appcompat/view/menu/zs1;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/appcompat/view/menu/zs1;->h:J

    iget-object v4, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->M()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->N()Ljava/lang/String;

    move-result-object v4

    const-string v6, "am"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    iget-object v6, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->x()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "Invalid scion state in identity"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :goto_6
    if-nez v6, :cond_6

    goto :goto_7

    :cond_6
    move v5, v2

    :goto_7
    iput-object v3, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    iput-object v3, p0, Landroidx/appcompat/view/menu/zs1;->n:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->M()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/zs1;->n:Ljava/lang/String;

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->P()Ljava/lang/String;

    move-result-object v6

    const-string v7, "google_app_id"

    new-instance v8, Landroidx/appcompat/view/menu/lw1;

    invoke-direct {v8, v4, v6}, Landroidx/appcompat/view/menu/lw1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Landroidx/appcompat/view/menu/lw1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    move-object v3, v4

    :goto_8
    iput-object v3, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Landroidx/appcompat/view/menu/lw1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->P()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroidx/appcompat/view/menu/lw1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "admob_app_id"

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/lw1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/view/menu/zs1;->n:Ljava/lang/String;

    goto :goto_9

    :catch_3
    move-exception v3

    goto :goto_b

    :cond_9
    :goto_9
    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "App measurement enabled for app package, google app id"

    iget-object v5, p0, Landroidx/appcompat/view/menu/zs1;->c:Ljava/lang/String;

    iget-object v6, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroidx/appcompat/view/menu/zs1;->n:Ljava/lang/String;

    goto :goto_a

    :cond_a
    iget-object v6, p0, Landroidx/appcompat/view/menu/zs1;->m:Ljava/lang/String;

    :goto_a
    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Fetching Google App Id failed with exception. appId"

    invoke-static {v0}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/zs1;->j:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    const-string v3, "analytics.safelisted_events"

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/qf1;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v5

    const-string v6, "safelisted event"

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/view/menu/x92;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_d

    :cond_e
    iput-object v0, p0, Landroidx/appcompat/view/menu/zs1;->j:Ljava/util/List;

    :goto_d
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/p50;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/zs1;->l:I

    return-void

    :cond_f
    iput v2, p0, Landroidx/appcompat/view/menu/zs1;->l:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
