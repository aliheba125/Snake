.class public Landroidx/appcompat/view/menu/jt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/jt$b;,
        Landroidx/appcompat/view/menu/jt$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lio/flutter/embedding/engine/a;

.field public final c:Landroidx/appcompat/view/menu/ut$b;

.field public final d:Ljava/util/Map;

.field public e:Landroidx/appcompat/view/menu/qp;

.field public f:Landroidx/appcompat/view/menu/jt$c;

.field public g:Z

.field public final h:Ljava/util/Map;

.field public i:Landroid/app/Service;

.field public final j:Ljava/util/Map;

.field public k:Landroid/content/BroadcastReceiver;

.field public final l:Ljava/util/Map;

.field public m:Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/b;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/jt;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->l:Ljava/util/Map;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    new-instance v0, Landroidx/appcompat/view/menu/ut$b;

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v4

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v5

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/bj0;->M()Landroidx/appcompat/view/menu/ti0;

    move-result-object v6

    new-instance v7, Landroidx/appcompat/view/menu/jt$b;

    const/4 v1, 0x0

    invoke-direct {v7, p3, v1}, Landroidx/appcompat/view/menu/jt$b;-><init>(Landroidx/appcompat/view/menu/st;Landroidx/appcompat/view/menu/jt$a;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroidx/appcompat/view/menu/ut$b;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Landroidx/appcompat/view/menu/i8;Lio/flutter/view/TextureRegistry;Landroidx/appcompat/view/menu/ti0;Landroidx/appcompat/view/menu/ut$a;Lio/flutter/embedding/engine/b;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->c:Landroidx/appcompat/view/menu/ut$b;

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#onActivityResult"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/jt$c;->a(IILandroid/content/Intent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    const-string p1, "FlutterEngineCxnRegstry"

    const-string p2, "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached."

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(I[Ljava/lang/String;[I)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#onRequestPermissionsResult"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/jt$c;->c(I[Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    const-string p1, "FlutterEngineCxnRegstry"

    const-string p2, "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached."

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivityForConfigChanges"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/jt;->g:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/d1;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/d1;->i()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1

    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/qp;Landroidx/lifecycle/f;)V
    .locals 2

    const-string v0, "FlutterEngineConnectionRegistry#attachToActivity"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->e:Landroidx/appcompat/view/menu/qp;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qp;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->n()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jt;->e:Landroidx/appcompat/view/menu/qp;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/jt;->k(Landroid/app/Activity;Landroidx/lifecycle/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public e(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlutterEngineConnectionRegistry#onNewIntent"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/jt$c;->b(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlutterEngineConnectionRegistry#onRestoreInstanceState"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/jt$c;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivity"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/d1;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/d1;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1

    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlutterEngineConnectionRegistry#onSaveInstanceState"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/jt$c;->h(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlutterEngineConnectionRegistry#onUserLeaveHint"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/jt$c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/ut;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterEngineConnectionRegistry#add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/jt;->r(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "FlutterEngineCxnRegstry"

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register plugin ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") but it was already registered with this FlutterEngine ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding plugin: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->c:Landroidx/appcompat/view/menu/ut$b;

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/ut;->h(Landroidx/appcompat/view/menu/ut$b;)V

    instance-of v1, p1, Landroidx/appcompat/view/menu/d1;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/d1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/d1;->g(Landroidx/appcompat/view/menu/o1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_3
    return-void

    :goto_0
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
.end method

.method public final k(Landroid/app/Activity;Landroidx/lifecycle/f;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/jt$c;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/jt$c;-><init>(Landroid/app/Activity;Landroidx/lifecycle/f;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "enable-software-rendering"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/appcompat/view/menu/bj0;->f0(Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroidx/appcompat/view/menu/bj0;->u(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Landroidx/appcompat/view/menu/si;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/d1;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/jt;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-interface {p2, v1}, Landroidx/appcompat/view/menu/d1;->b(Landroidx/appcompat/view/menu/o1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    invoke-interface {p2, v1}, Landroidx/appcompat/view/menu/d1;->g(Landroidx/appcompat/view/menu/o1;)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/jt;->g:Z

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->y()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bj0;->E()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->e:Landroidx/appcompat/view/menu/qp;

    iput-object v0, p0, Landroidx/appcompat/view/menu/jt;->f:Landroidx/appcompat/view/menu/jt$c;

    return-void
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->o()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->p()V

    :cond_3
    :goto_0
    return-void
.end method

.method public o()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#detachFromBroadcastReceiver"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#detachFromContentProvider"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public q()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlutterEngineConnectionRegistry#detachFromService"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Landroidx/appcompat/view/menu/jt;->i:Landroid/app/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1

    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a Service when no Service was attached."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public r(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->e:Landroidx/appcompat/view/menu/qp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->m:Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->i:Landroid/app/Service;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ut;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlutterEngineConnectionRegistry#remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v1

    :try_start_0
    instance-of v2, v0, Landroidx/appcompat/view/menu/d1;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jt;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/d1;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/d1;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/jt;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/jt;->c:Landroidx/appcompat/view/menu/ut$b;

    invoke-interface {v0, v2}, Landroidx/appcompat/view/menu/ut;->f(Landroidx/appcompat/view/menu/ut$b;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_3
    return-void

    :goto_1
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public x(Ljava/util/Set;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jt;->w(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jt;->x(Ljava/util/Set;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/jt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
