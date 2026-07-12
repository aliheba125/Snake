.class public Landroidx/appcompat/view/menu/xx;
.super Landroidx/appcompat/view/menu/yx;
.source "SourceFile"


# static fields
.field public static final d:I

.field public static final e:Ljava/lang/Object;

.field public static final f:Landroidx/appcompat/view/menu/xx;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/xx;->e:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/xx;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/xx;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/xx;->f:Landroidx/appcompat/view/menu/xx;

    sget v0, Landroidx/appcompat/view/menu/yx;->a:I

    sput v0, Landroidx/appcompat/view/menu/xx;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/yx;-><init>()V

    return-void
.end method

.method public static m()Landroidx/appcompat/view/menu/xx;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/xx;->f:Landroidx/appcompat/view/menu/xx;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/yx;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/yx;->c(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/yx;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/content/Context;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/yx;->g(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public h(Landroid/content/Context;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/yx;->h(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final j(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/yx;->j(I)Z

    move-result p1

    return p1
.end method

.method public k(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/xx;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroidx/appcompat/view/menu/ad1;->b(Landroid/app/Activity;Landroid/content/Intent;I)Landroidx/appcompat/view/menu/ad1;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/xx;->p(Landroid/content/Context;ILandroidx/appcompat/view/menu/ad1;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;Landroidx/appcompat/view/menu/ef;)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ef;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ef;->i()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/xx;->c(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public n(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/xx;->k(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/xx;->s(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public o(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "n"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/appcompat/view/menu/yx;->d(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/appcompat/view/menu/xx;->t(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final p(Landroid/content/Context;ILandroidx/appcompat/view/menu/ad1;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/cc1;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/cc1;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {v0, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/cc1;->g(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public final q(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/cc1;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/appcompat/view/menu/xx;->s(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public final r(Landroid/content/Context;Landroidx/appcompat/view/menu/zb1;)Landroidx/appcompat/view/menu/ac1;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroidx/appcompat/view/menu/ac1;

    invoke-direct {v1, p2}, Landroidx/appcompat/view/menu/ac1;-><init>(Landroidx/appcompat/view/menu/zb1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ac1;->a(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/yx;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/zb1;->a()V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ac1;->b()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final s(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/uo;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/view/menu/uo;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/uo;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final t(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 p3, 0x12

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xx;->u(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/cc1;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/cc1;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroidx/appcompat/view/menu/gf0$e;

    invoke-direct {v3, p1}, Landroidx/appcompat/view/menu/gf0$e;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/gf0$e;->q(Z)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/gf0$e;->e(Z)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/appcompat/view/menu/gf0$e;->j(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object p3

    new-instance v3, Landroidx/appcompat/view/menu/gf0$c;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/gf0$c;-><init>()V

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/gf0$c;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$c;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroidx/appcompat/view/menu/gf0$e;->x(Landroidx/appcompat/view/menu/gf0$f;)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object p3

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl;->c(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->e()Z

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->l(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p3, v0}, Landroidx/appcompat/view/menu/gf0$e;->v(I)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/gf0$e;->t(I)Landroidx/appcompat/view/menu/gf0$e;

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroidx/appcompat/view/menu/hm0;->a:I

    sget v3, Landroidx/appcompat/view/menu/ym0;->o:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p4}, Landroidx/appcompat/view/menu/gf0$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p4}, Landroidx/appcompat/view/menu/gf0$e;->h(Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;

    goto :goto_0

    :cond_3
    const v3, 0x108008a

    invoke-virtual {p3, v3}, Landroidx/appcompat/view/menu/gf0$e;->v(I)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v3

    sget v6, Landroidx/appcompat/view/menu/ym0;->h:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/gf0$e;->y(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/view/menu/gf0$e;->B(J)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/appcompat/view/menu/gf0$e;->h(Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroidx/appcompat/view/menu/gf0$e;->i(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->h()Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->h()Z

    move-result p4

    invoke-static {p4}, Landroidx/appcompat/view/menu/mj0;->l(Z)V

    sget-object p4, Landroidx/appcompat/view/menu/xx;->e:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/xx;->c:Ljava/lang/String;

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    const-string v0, "com.google.android.gms.availability"

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p4

    invoke-static {p1}, Landroidx/appcompat/view/menu/cc1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_5

    new-instance p4, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {p4, v0, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p4, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_6
    :goto_1
    invoke-virtual {p3, v0}, Landroidx/appcompat/view/menu/gf0$e;->f(Ljava/lang/String;)Landroidx/appcompat/view/menu/gf0$e;

    :goto_2
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/gf0$e;->b()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v4, :cond_7

    if-eq p2, v5, :cond_7

    const/4 p3, 0x3

    if-eq p2, p3, :cond_7

    const p2, 0x9b6d

    goto :goto_3

    :cond_7
    sget-object p2, Landroidx/appcompat/view/menu/fy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    :goto_3
    invoke-virtual {v2, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/fc1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/fc1;-><init>(Landroidx/appcompat/view/menu/xx;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final v(Landroid/app/Activity;Landroidx/appcompat/view/menu/y80;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string p4, "d"

    invoke-virtual {p0, p1, p3, p4}, Landroidx/appcompat/view/menu/xx;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    invoke-static {p2, p4, v0}, Landroidx/appcompat/view/menu/ad1;->c(Landroidx/appcompat/view/menu/y80;Landroid/content/Intent;I)Landroidx/appcompat/view/menu/ad1;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2, p5}, Landroidx/appcompat/view/menu/xx;->p(Landroid/content/Context;ILandroidx/appcompat/view/menu/ad1;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-virtual {p0, p1, p2, p3, p5}, Landroidx/appcompat/view/menu/xx;->s(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final w(Landroid/content/Context;Landroidx/appcompat/view/menu/ef;I)Z
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/p50;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/xx;->l(Landroid/content/Context;Landroidx/appcompat/view/menu/ef;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result p2

    const/4 v2, 0x1

    invoke-static {p1, v0, p3, v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p3

    sget v0, Landroidx/appcompat/view/menu/md1;->a:I

    const/high16 v3, 0x8000000

    or-int/2addr v0, v3

    invoke-static {p1, v1, p3, v0}, Landroidx/appcompat/view/menu/md1;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/appcompat/view/menu/xx;->t(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return v2

    :cond_1
    return v1
.end method
