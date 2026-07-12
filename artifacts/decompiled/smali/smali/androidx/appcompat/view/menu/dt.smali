.class public abstract Landroidx/appcompat/view/menu/dt;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/et$c;
.implements Landroidx/appcompat/view/menu/a90;


# static fields
.field public static final e:I


# instance fields
.field public a:Z

.field public b:Landroidx/appcompat/view/menu/et;

.field public c:Landroidx/lifecycle/i;

.field public final d:Landroid/window/OnBackInvokedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Landroidx/appcompat/view/menu/dt;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dt;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->M()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/dt;->d:Landroid/window/OnBackInvokedCallback;

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method public A()Landroidx/appcompat/view/menu/uo0;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->N()Landroidx/appcompat/view/menu/ft;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ft;->m:Landroidx/appcompat/view/menu/ft;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/uo0;->m:Landroidx/appcompat/view/menu/uo0;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/uo0;->n:Landroidx/appcompat/view/menu/uo0;

    :goto_0
    return-object v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D(Landroid/content/Context;)Lio/flutter/embedding/engine/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public E()Landroidx/appcompat/view/menu/a21;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->N()Landroidx/appcompat/view/menu/ft;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ft;->m:Landroidx/appcompat/view/menu/ft;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/a21;->m:Landroidx/appcompat/view/menu/a21;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/a21;->n:Landroidx/appcompat/view/menu/a21;

    :goto_0
    return-object v0
.end method

.method public F(Lio/flutter/embedding/engine/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/jx;->a(Lio/flutter/embedding/engine/a;)V

    return-void
.end method

.method public G(Landroidx/appcompat/view/menu/fu;)V
    .locals 0

    return-void
.end method

.method public H()V
    .locals 1

    const-string v0, "cancelBackGesture"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->h()V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 1

    const-string v0, "commitBackGesture"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->i()V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final K()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->N()Landroidx/appcompat/view/menu/ft;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ft;->n:Landroidx/appcompat/view/menu/ft;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final L()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Landroidx/appcompat/view/menu/dt;->e:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->A()Landroidx/appcompat/view/menu/uo0;

    move-result-object v5

    sget-object v6, Landroidx/appcompat/view/menu/uo0;->m:Landroidx/appcompat/view/menu/uo0;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/et;->u(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final M()Landroid/window/OnBackInvokedCallback;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/dt$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/dt$a;-><init>(Landroidx/appcompat/view/menu/dt;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ct;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ct;-><init>(Landroidx/appcompat/view/menu/dt;)V

    return-object v0
.end method

.method public N()Landroidx/appcompat/view/menu/ft;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "background_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/ft;->valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/ft;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/ft;->m:Landroidx/appcompat/view/menu/ft;

    return-object v0
.end method

.method public O()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->n()Lio/flutter/embedding/engine/a;

    move-result-object v0

    return-object v0
.end method

.method public P()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final Q()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/zs;->a(Landroidx/appcompat/view/menu/dt;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/view/menu/dt;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/bt;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dt;->a:Z

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->W()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->J()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    :cond_0
    return-void
.end method

.method public T(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "startBackGesture"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->L(Landroid/window/BackEvent;)V

    :cond_0
    return-void
.end method

.method public final U(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterActivity "

    const-string v4, "FlutterActivity"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after release."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->o()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after detach."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final V()V
    .locals 4

    const-string v0, "FlutterActivity"

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->P()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.embedding.android.NormalTheme"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    :cond_0
    const-string v1, "Using the launch theme as normal theme."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public W()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/zs;->a(Landroidx/appcompat/view/menu/dt;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dt;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/at;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dt;->a:Z

    :cond_0
    return-void
.end method

.method public X(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "updateBackGestureProgress"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->M(Landroid/window/BackEvent;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->O()Lio/flutter/embedding/engine/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivity"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->w()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/dt;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->R()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/dt;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->W()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Landroidx/lifecycle/f;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->P()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "io.flutter.InitialRoute"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dart_entrypoint_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "destroy_engine_with_activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/et;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/et;->r(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->t()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->V()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroidx/appcompat/view/menu/et;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/et;-><init>(Landroidx/appcompat/view/menu/et$c;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/et;->s(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->B(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->K()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->L()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->J()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->v()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->w()V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->S()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->x(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->y()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string v0, "onPostResume"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->z()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "onRequestPermissionsResult"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/et;->A(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->C()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->D(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->E()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->F()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->G(I)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    const-string v0, "onUserLeaveHint"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/et;->H()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dt;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt;->b:Landroidx/appcompat/view/menu/et;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/et;->I(Z)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    const-string v0, "main"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dart_entrypoint"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->P()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "io.flutter.Entrypoint"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    :catch_0
    :cond_2
    return-object v0
.end method

.method public t(Lio/flutter/embedding/engine/a;)V
    .locals 0

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->P()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.EntrypointUri"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public v(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Landroidx/appcompat/view/menu/mi0;
    .locals 1

    new-instance p1, Landroidx/appcompat/view/menu/mi0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->p()Landroidx/appcompat/view/menu/fi0;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Landroidx/appcompat/view/menu/mi0;-><init>(Landroid/app/Activity;Landroidx/appcompat/view/menu/fi0;Landroidx/appcompat/view/menu/mi0$d;)V

    return-object p1
.end method

.method public w()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dt;->P()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "flutter_deeplinking_enabled"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public y(Landroidx/appcompat/view/menu/hu;)V
    .locals 0

    return-void
.end method

.method public z()Landroidx/appcompat/view/menu/eu;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/eu;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/eu;

    move-result-object v0

    return-object v0
.end method
