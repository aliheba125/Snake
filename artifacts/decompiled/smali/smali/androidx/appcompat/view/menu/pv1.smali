.class public final Landroidx/appcompat/view/menu/pv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/zj1;

.field public final synthetic n:Landroid/content/ServiceConnection;

.field public final synthetic o:Landroidx/appcompat/view/menu/jv1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jv1;Landroidx/appcompat/view/menu/zj1;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/pv1;->o:Landroidx/appcompat/view/menu/jv1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/pv1;->m:Landroidx/appcompat/view/menu/zj1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/pv1;->n:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/pv1;->o:Landroidx/appcompat/view/menu/jv1;

    iget-object v2, v1, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/jv1;->a(Landroidx/appcompat/view/menu/jv1;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroidx/appcompat/view/menu/pv1;->m:Landroidx/appcompat/view/menu/zj1;

    iget-object v4, v0, Landroidx/appcompat/view/menu/pv1;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/view/menu/lv1;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/zj1;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v5, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->Q()V

    if-eqz v3, :cond_9

    const-string v5, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    iget-object v1, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "Service response is missing Install Referrer install timestamp"

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v5, "install_referrer"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v12, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v12

    const-string v13, "InstallReferrer API result"

    invoke-virtual {v12, v13, v5}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v12, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "?"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Landroidx/appcompat/view/menu/kd2;->a()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/cx1;->z()Landroidx/appcompat/view/menu/qf1;

    move-result-object v13

    sget-object v14, Landroidx/appcompat/view/menu/si1;->F0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v13, v14}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/nb2;->a()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/cx1;->z()Landroidx/appcompat/view/menu/qf1;

    move-result-object v14

    sget-object v15, Landroidx/appcompat/view/menu/si1;->a1:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v12, v5, v13, v14}, Landroidx/appcompat/view/menu/x92;->C(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v1, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "No campaign params defined in Install Referrer result"

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v12, "medium"

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v13, "(not set)"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "organic"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "referrer_click_timestamp_seconds"

    invoke-virtual {v3, v12, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    mul-long/2addr v12, v10

    cmp-long v3, v12, v6

    if-nez v3, :cond_5

    iget-object v1, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "Install Referrer is missing click timestamp for ad campaign"

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v3, "click_timestamp"

    invoke-virtual {v5, v3, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v3

    iget-object v3, v3, Landroidx/appcompat/view/menu/tu1;->f:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_7

    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from module while it may have already been logged."

    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v3

    iget-object v3, v3, Landroidx/appcompat/view/menu/tu1;->f:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v3, v8, v9}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from gmscore with "

    const-string v7, "referrer API v2"

    invoke-virtual {v3, v6, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "_cis"

    invoke-virtual {v5, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v3

    const-string v6, "auto"

    const-string v7, "_cmp"

    invoke-virtual {v3, v6, v7, v5, v1}, Landroidx/appcompat/view/menu/d02;->Y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v1, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "No referrer defined in Install Referrer response"

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v1

    iget-object v2, v2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/view/menu/hf;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_a
    return-void
.end method
