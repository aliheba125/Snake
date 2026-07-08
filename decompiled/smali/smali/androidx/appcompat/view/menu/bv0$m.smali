.class public abstract Landroidx/appcompat/view/menu/bv0$m;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "m"
.end annotation


# instance fields
.field public l:Landroid/accounts/IAccountManagerResponse;

.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:J

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z

.field public s:I

.field public t:I

.field public u:I

.field public v:Landroid/accounts/IAccountAuthenticator;

.field public final w:Z

.field public final x:Landroidx/appcompat/view/menu/c7;

.field public final synthetic y:Landroidx/appcompat/view/menu/bv0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    .line 2
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->t:I

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->u:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_1

    iput-object p2, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/bv0$m;->w:Z

    iput-object p3, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    iput-object p4, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/bv0$m;->n:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Landroidx/appcompat/view/menu/bv0$m;->o:J

    iput-object p7, p0, Landroidx/appcompat/view/menu/bv0$m;->p:Ljava/lang/String;

    iput-boolean p8, p0, Landroidx/appcompat/view/menu/bv0$m;->q:Z

    iput-boolean p9, p0, Landroidx/appcompat/view/menu/bv0$m;->r:Z

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/bv0;->y2(Landroidx/appcompat/view/menu/bv0;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 5
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/bv0;->y2(Landroidx/appcompat/view/menu/bv0;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 7
    :try_start_1
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->binderDied()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->close()V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->y2(Landroidx/appcompat/view/menu/bv0;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bv0;->y2(Landroidx/appcompat/view/menu/bv0;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->k()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->z2()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bv0$m;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->u2(Landroidx/appcompat/view/menu/bv0;)Landroidx/appcompat/view/menu/bv0$i;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/bv0$j;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez v0, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no authenticator for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bailing out"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return v1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v0, Landroidx/appcompat/view/menu/bv0$j;->b:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget v0, v0, Landroidx/appcompat/view/menu/c7;->n:I

    const-string v5, "_S_|_UserId"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performing bindService to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->v2(Landroidx/appcompat/view/menu/bv0;)Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, p1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindService to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return v1

    :cond_4
    return v5
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->w2(Landroidx/appcompat/view/menu/bv0;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5

    iget v0, p0, Landroidx/appcompat/view/menu/bv0$m;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->u:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->v2()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public onRequestContinued()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/bv0$m;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->t:I

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "errorCode"

    iget v1, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    if-eqz p1, :cond_6

    const-string v1, "booleanResult"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "authAccount"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "accountType"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-boolean v5, p0, Landroidx/appcompat/view/menu/bv0$m;->r:Z

    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/bv0$m;->q:Z

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$m;->p:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget v5, v5, Landroidx/appcompat/view/menu/c7;->n:I

    invoke-static {v1, v3, v4, v5}, Landroidx/appcompat/view/menu/bv0;->B2(Landroidx/appcompat/view/menu/bv0;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0$m;->p:Ljava/lang/String;

    iget-object v6, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroidx/appcompat/view/menu/bv0;->D2(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    :cond_4
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/bv0$m;->q:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$m;->p:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/c7;->c(Landroid/accounts/Account;)J

    move-result-wide v1

    goto :goto_2

    :cond_5
    const-wide/16 v1, -0x1

    :goto_2
    const-string v3, "lastAuthenticatedTime"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const/4 v1, 0x5

    const-string v2, "intent"

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Landroidx/appcompat/view/menu/bv0$m;->u2(ILandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    return-void

    :cond_7
    const/4 v3, 0x0

    :cond_8
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/bv0$m;->n:Z

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->v2()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_f

    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    if-nez p1, :cond_b

    :try_start_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " calling onError() on response "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    const-string p1, "null bundle returned"

    invoke-interface {v2, v1, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/bv0$m;->w:Z

    if-eqz v1, :cond_c

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_c
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling onResult() on response "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_e

    if-nez v3, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorMessage"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_f
    :goto_4
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->w2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    const-string p2, "remote exception"

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->v2()Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "disconnected"

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AccountManagerService"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public u2(ILandroid/content/Intent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, -0xc4

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/bv0;->x2(Landroidx/appcompat/view/menu/bv0;)Landroidx/appcompat/view/menu/x6;

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget v3, v3, Landroidx/appcompat/view/menu/c7;->n:I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4, v0, v3}, Landroidx/appcompat/view/menu/x6;->n(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public v2()Landroid/accounts/IAccountManagerResponse;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->l:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->close()V

    return-object v0
.end method

.method public abstract w2()V
.end method

.method public x2()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y2(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/bv0$m;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/bv0$m;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/bv0$m;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/bv0$m;->o:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final z2()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->y:Landroidx/appcompat/view/menu/bv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->v2(Landroidx/appcompat/view/menu/bv0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
