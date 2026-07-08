.class public final Landroidx/appcompat/view/menu/r32;
.super Landroidx/appcompat/view/menu/cp1;
.source "SourceFile"


# instance fields
.field public volatile c:Landroidx/appcompat/view/menu/t32;

.field public volatile d:Landroidx/appcompat/view/menu/t32;

.field public e:Landroidx/appcompat/view/menu/t32;

.field public final f:Ljava/util/Map;

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:Landroidx/appcompat/view/menu/t32;

.field public j:Landroidx/appcompat/view/menu/t32;

.field public k:Z

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/cp1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/r32;)Landroidx/appcompat/view/menu/t32;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/r32;->j:Landroidx/appcompat/view/menu/t32;

    return-object p0
.end method

.method public static synthetic J(Landroidx/appcompat/view/menu/r32;Landroid/os/Bundle;Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;J)V
    .locals 13

    move-object v3, p1

    if-eqz v3, :cond_0

    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_view"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/x92;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Landroidx/appcompat/view/menu/r32;->N(Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic K(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r32;->j:Landroidx/appcompat/view/menu/t32;

    return-void
.end method

.method public static bridge synthetic L(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/r32;->N(Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic M(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;ZJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/r32;->O(Landroidx/appcompat/view/menu/t32;ZJ)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final C(Z)Landroidx/appcompat/view/menu/t32;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    return-object p1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->j:Landroidx/appcompat/view/menu/t32;

    return-object p1
.end method

.method public final D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result v0

    if-le p2, v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final E(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->g:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/r32;->g:Landroid/app/Activity;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final F(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroidx/appcompat/view/menu/t32;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final G(Landroid/app/Activity;Landroidx/appcompat/view/menu/t32;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    iget-object v1, v7, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    if-nez v1, :cond_0

    iget-object v1, v7, Landroidx/appcompat/view/menu/r32;->d:Landroidx/appcompat/view/menu/t32;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    iget-object v1, v7, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    goto :goto_0

    :goto_1
    iget-object v1, v0, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {v7, v1, v2}, Landroidx/appcompat/view/menu/r32;->D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v10, v1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    new-instance v1, Landroidx/appcompat/view/menu/t32;

    iget-object v9, v0, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/appcompat/view/menu/t32;->c:J

    iget-boolean v13, v0, Landroidx/appcompat/view/menu/t32;->e:Z

    iget-wide v14, v0, Landroidx/appcompat/view/menu/t32;->f:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_4

    :cond_2
    move-object v2, v0

    :goto_4
    iget-object v0, v7, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    iput-object v0, v7, Landroidx/appcompat/view/menu/r32;->d:Landroidx/appcompat/view/menu/t32;

    iput-object v2, v7, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v8

    new-instance v9, Landroidx/appcompat/view/menu/b42;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/b42;-><init>(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;JZ)V

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v1, "Activity"

    invoke-virtual {p0, p3, v1}, Landroidx/appcompat/view/menu/r32;->D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v1, v0, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    invoke-static {v1, p3}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, v0, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result v0

    if-le v1, v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    if-nez p2, :cond_9

    const-string v1, "null"

    goto :goto_0

    :cond_9
    move-object v1, p2

    :goto_0
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/x92;->P0()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/r32;->G(Landroid/app/Activity;Landroidx/appcompat/view/menu/t32;Z)V

    return-void
.end method

.method public final I(Landroid/os/Bundle;J)V
    .locals 12

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/r32;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Cannot log screen view event when the app is in the background."

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Invalid screen name length for screen view. Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    const-string v3, "screen_class"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result v1

    if-le v4, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Invalid screen class length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_4
    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->g:Landroid/app/Activity;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/r32;->D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v1, "Activity"

    :cond_7
    :goto_1
    move-object v4, v1

    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/r32;->h:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/r32;->h:Z

    iget-object v2, v1, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, v1, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Ignoring call to log screen view event with duplicate parameters."

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Logging screen view with name, class"

    if-nez v3, :cond_9

    const-string v2, "null"

    goto :goto_2

    :cond_9
    move-object v2, v3

    :goto_2
    if-nez v4, :cond_a

    const-string v5, "null"

    goto :goto_3

    :cond_a
    move-object v5, v4

    :goto_3
    invoke-virtual {v0, v1, v2, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->d:Landroidx/appcompat/view/menu/t32;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    :goto_4
    new-instance v1, Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/x92;->P0()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v1

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    iput-object v0, p0, Landroidx/appcompat/view/menu/r32;->d:Landroidx/appcompat/view/menu/t32;

    iput-object v1, p0, Landroidx/appcompat/view/menu/r32;->i:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p2

    invoke-interface {p2}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/view/menu/v32;

    move-object v5, p3

    move-object v6, p0

    move-object v7, p1

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/view/menu/v32;-><init>(Landroidx/appcompat/view/menu/r32;Landroid/os/Bundle;Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;J)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final N(Landroidx/appcompat/view/menu/t32;Landroidx/appcompat/view/menu/t32;JZLandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-wide v8, v2, Landroidx/appcompat/view/menu/t32;->c:J

    iget-wide v10, v1, Landroidx/appcompat/view/menu/t32;->c:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, v2, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    iget-object v9, v1, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    iget-object v9, v1, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/appcompat/view/menu/x32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    if-eqz p5, :cond_2

    iget-object v9, v0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    if-eqz v8, :cond_b

    new-instance v8, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_2
    move-object v14, v8

    goto :goto_3

    :cond_3
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_2

    :goto_3
    invoke-static {v1, v14, v7}, Landroidx/appcompat/view/menu/x92;->W(Landroidx/appcompat/view/menu/t32;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v5, "_pi"

    iget-wide v8, v2, Landroidx/appcompat/view/menu/t32;->c:J

    invoke-virtual {v14, v5, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->u()Landroidx/appcompat/view/menu/y62;

    move-result-object v2

    iget-object v2, v2, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/q72;->a(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2, v14, v10, v11}, Landroidx/appcompat/view/menu/x92;->L(Landroid/os/Bundle;J)V

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "_mst"

    const-wide/16 v10, 0x1

    invoke-virtual {v14, v2, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-boolean v2, v1, Landroidx/appcompat/view/menu/t32;->e:Z

    if-eqz v2, :cond_9

    const-string v2, "app"

    :goto_4
    move-object v10, v2

    goto :goto_5

    :cond_9
    const-string v2, "auto"

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v11

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/t32;->e:Z

    move-wide/from16 p5, v11

    if-eqz v2, :cond_a

    iget-wide v11, v1, Landroidx/appcompat/view/menu/t32;->f:J

    cmp-long v2, v11, v8

    if-eqz v2, :cond_a

    move-wide v12, v11

    goto :goto_6

    :cond_a
    move-wide/from16 v12, p5

    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v9

    const-string v11, "_vs"

    invoke-virtual/range {v9 .. v14}, Landroidx/appcompat/view/menu/d02;->U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_b
    if-eqz v6, :cond_c

    iget-object v2, v0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0, v2, v7, v3, v4}, Landroidx/appcompat/view/menu/r32;->O(Landroidx/appcompat/view/menu/t32;ZJ)V

    :cond_c
    iput-object v1, v0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/t32;->e:Z

    if-eqz v2, :cond_d

    iput-object v1, v0, Landroidx/appcompat/view/menu/r32;->j:Landroidx/appcompat/view/menu/t32;

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h42;->L(Landroidx/appcompat/view/menu/t32;)V

    return-void
.end method

.method public final O(Landroidx/appcompat/view/menu/t32;ZJ)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/oh1;->v(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/t32;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->u()Landroidx/appcompat/view/menu/y62;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Landroidx/appcompat/view/menu/y62;->E(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/t32;->d:Z

    :cond_1
    return-void
.end method

.method public final P()Landroidx/appcompat/view/menu/t32;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    return-object v0
.end method

.method public final Q(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r32;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r32;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/view/menu/f42;

    invoke-direct {v2, p0, v0, v1}, Landroidx/appcompat/view/menu/f42;-><init>(Landroidx/appcompat/view/menu/r32;J)V

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r32;->T(Landroid/app/Activity;)Landroidx/appcompat/view/menu/t32;

    move-result-object p1

    iget-object v2, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    iput-object v2, p0, Landroidx/appcompat/view/menu/r32;->d:Landroidx/appcompat/view/menu/t32;

    iput-object v3, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/view/menu/d42;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/appcompat/view/menu/d42;-><init>(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;J)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final R(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/t32;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Landroidx/appcompat/view/menu/t32;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Landroidx/appcompat/view/menu/t32;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Landroidx/appcompat/view/menu/t32;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final S(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r32;->k:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->g:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/r32;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r32;->g:Landroid/app/Activity;

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/r32;->h:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/r32;->i:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v3, Landroidx/appcompat/view/menu/j42;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/j42;-><init>(Landroidx/appcompat/view/menu/r32;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->i:Landroidx/appcompat/view/menu/t32;

    iput-object p1, p0, Landroidx/appcompat/view/menu/r32;->c:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/z32;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z32;-><init>(Landroidx/appcompat/view/menu/r32;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r32;->T(Landroid/app/Activity;)Landroidx/appcompat/view/menu/t32;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Landroidx/appcompat/view/menu/r32;->G(Landroid/app/Activity;Landroidx/appcompat/view/menu/t32;Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/view/menu/ck1;

    invoke-direct {v3, p1, v0, v1}, Landroidx/appcompat/view/menu/ck1;-><init>(Landroidx/appcompat/view/menu/oh1;J)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final T(Landroid/app/Activity;)Landroidx/appcompat/view/menu/t32;
    .locals 5

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/t32;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/r32;->D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/t32;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/x92;->P0()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r32;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->i:Landroidx/appcompat/view/menu/t32;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/r32;->i:Landroidx/appcompat/view/menu/t32;

    return-object p1

    :cond_1
    return-object v0
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
