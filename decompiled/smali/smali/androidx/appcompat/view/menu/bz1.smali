.class public final Landroidx/appcompat/view/menu/bz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bz1;->c:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bz1;->a:Landroidx/appcompat/view/menu/cb2;

    iput-object p3, p0, Landroidx/appcompat/view/menu/bz1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/appcompat/view/menu/bz1;->c:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, v1, Landroidx/appcompat/view/menu/bz1;->c:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v2

    iget-object v3, v1, Landroidx/appcompat/view/menu/bz1;->a:Landroidx/appcompat/view/menu/cb2;

    iget-object v0, v1, Landroidx/appcompat/view/menu/bz1;->b:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    iget-object v5, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    sget-object v6, Landroidx/appcompat/view/menu/si1;->L0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_3

    const-string v4, "uriSources"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "uriTimestamps"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    array-length v0, v5

    array-length v6, v4

    if-eq v0, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v0, v4

    if-ge v7, v0, :cond_3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    aget v0, v4, v7

    aget-wide v10, v5, v7

    invoke-static {v9}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/m82;->u()V

    :try_start_0
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "trigger_uris"

    const-string v14, "app_id=? and source=? and timestamp_millis<=?"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    aput-object v9, v15, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Pruned "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " trigger URIs. appId, source, timestamp"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v12, v9, v0, v10}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v10, "Error pruning trigger URIs. appId"

    invoke-static {v9}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v10, v9, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v4, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v2, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/lg1;->K0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
