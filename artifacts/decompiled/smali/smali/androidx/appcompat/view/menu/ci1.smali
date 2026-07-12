.class public final Landroidx/appcompat/view/menu/ci1;
.super Landroidx/appcompat/view/menu/dz1;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Ljava/lang/String;

.field public e:Landroid/accounts/AccountManager;

.field public f:Ljava/lang/Boolean;

.field public g:J


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/dz1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    return-void
.end method


# virtual methods
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

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->k()V

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

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    return-void
.end method

.method public final s()Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/ci1;->c:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->d:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ci1;->c:J

    return-wide v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ci1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    return-void
.end method

.method public final y()Z
    .locals 9

    const-string v0, "com.google"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-lez v3, :cond_0

    iput-object v4, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/lg;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->N()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v3, "Permission error checking for dasher/unicorn accounts"

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iput-wide v1, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    return v5

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/ci1;->e:Landroid/accounts/AccountManager;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/view/menu/ci1;->e:Landroid/accounts/AccountManager;

    :cond_3
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/ci1;->e:Landroid/accounts/AccountManager;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_HOSTED"

    aput-object v8, v7, v5

    invoke-virtual {v3, v0, v7, v4, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    if-eqz v3, :cond_4

    array-length v3, v3

    if-lez v3, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    iput-wide v1, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    return v6

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroidx/appcompat/view/menu/ci1;->e:Landroid/accounts/AccountManager;

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_uca"

    aput-object v8, v7, v5

    invoke-virtual {v3, v0, v7, v4, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    iput-wide v1, p0, Landroidx/appcompat/view/menu/ci1;->g:J
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Exception checking account types"

    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iput-wide v1, p0, Landroidx/appcompat/view/menu/ci1;->g:J

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ci1;->f:Ljava/lang/Boolean;

    return v5
.end method
