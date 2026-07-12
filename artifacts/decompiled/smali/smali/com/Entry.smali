.class public Lcom/Entry;
.super Landroidx/appcompat/view/menu/dt;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# static fields
.field public static final h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field public f:Landroidx/appcompat/view/menu/kd0$d;

.field public g:Landroidx/appcompat/view/menu/kd0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/Entry;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dt;-><init>()V

    return-void
.end method

.method public static synthetic Y(Lcom/Entry;)V
    .locals 0

    invoke-virtual {p0}, Lcom/Entry;->g0()V

    return-void
.end method

.method public static synthetic Z(Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-static {p0}, Lcom/Entry;->f0(Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public static synthetic f0(Landroidx/appcompat/view/menu/zy0;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/Entry;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 4

    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/id0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/snake/helper/Native;->djp(I)[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/id0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/Entry;->i:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v3, "D"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, p0, Lcom/Entry;->f:Landroidx/appcompat/view/menu/kd0$d;

    invoke-virtual {p0}, Lcom/Entry;->i0()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v3, "E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_f

    new-instance p2, Landroid/content/Intent;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v3, "G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/id0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/yu0;->A(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/yu0;->x(Ljava/lang/String;I)Landroidx/appcompat/view/menu/k50;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/k50;->m:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/yu0;->C(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    :goto_1
    return-void

    :cond_b
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/id0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/s2;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/s2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/s2;->b()[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/id0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Lcom/Entry;->j0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    :cond_f
    :goto_2
    return-void
.end method

.method public a0()V
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/or;->p(Landroid/content/Context;)Landroidx/appcompat/view/menu/or;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/Entry;->j:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->A(Z)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->o()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/to;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/to;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zy0;->b(Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;

    return-void
.end method

.method public b0()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/so;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/so;-><init>(Lcom/Entry;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/lg;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p0, v0, v1}, Landroidx/appcompat/view/menu/f1;->n(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final d0()Z
    .locals 2

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/snake/helper/DaemonService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/Entry;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e0()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/lg;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final synthetic g0()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->O()Lio/flutter/embedding/engine/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/si;->f()Landroidx/appcompat/view/menu/i8;

    move-result-object v1

    sget-object v2, Lcom/Entry;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/Entry;->g:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    return-void
.end method

.method public final h0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final i0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public j0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3, v1, v0, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/zip"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "Share zipped file"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    return p2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/dt;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, p3, v0, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x1

    const/16 v0, 0x80

    invoke-static {p1, v0, v0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p3, 0x55

    :cond_0
    if-gtz p3, :cond_1

    iget-object p1, p0, Lcom/Entry;->f:Landroidx/appcompat/view/menu/kd0$d;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    add-int/lit8 p3, p3, -0x5

    array-length v1, v0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_0

    iget-object p1, p0, Lcom/Entry;->f:Landroidx/appcompat/view/menu/kd0$d;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/Entry;->f:Landroidx/appcompat/view/menu/kd0$d;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/dt;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/Entry;->c0()V

    invoke-virtual {p0}, Lcom/Entry;->a0()V

    invoke-virtual {p0}, Lcom/Entry;->b0()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/dt;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e9

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/Entry;->i0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/Entry;->f:Landroidx/appcompat/view/menu/kd0$d;

    const-string p2, "Storage permission denied"

    const/4 p3, 0x0

    const-string v0, "PERMISSION_DENIED"

    invoke-interface {p1, v0, p2, p3}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_2

    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/Entry;->d0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/Entry;->h0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/dt;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/view/menu/dt;->onStop()V

    iget-object v0, p0, Lcom/Entry;->g:Landroidx/appcompat/view/menu/kd0;

    sget-object v1, Lcom/Entry;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
