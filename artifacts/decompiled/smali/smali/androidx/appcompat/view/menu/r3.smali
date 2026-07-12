.class public final Landroidx/appcompat/view/menu/r3;
.super Landroidx/appcompat/view/menu/b8;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/r3$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/b8;-><init>()V

    return-void
.end method

.method public static c()V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/t1;->i:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    invoke-static {}, Landroidx/appcompat/view/menu/r3;->g()Landroidx/appcompat/view/menu/r3;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/t1;->i:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/r3;->g()Landroidx/appcompat/view/menu/r3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static g()Landroidx/appcompat/view/menu/r3;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/r3$a;->a:Landroidx/appcompat/view/menu/r3;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r3;->h()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/r3;->f(Landroid/app/Instrumentation;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r3;->h()Landroid/app/Instrumentation;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/r3;->f(Landroid/app/Instrumentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/b8;->l:Landroid/app/Instrumentation;

    sget-object v0, Landroidx/appcompat/view/menu/t1;->i:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r3;->d(Landroid/app/Activity;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b8;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r3;->d(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b8;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callActivityOnResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b8;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r3;->e()V

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b8;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r3;->e()V

    invoke-static {}, Landroidx/appcompat/view/menu/iz;->c()Landroidx/appcompat/view/menu/iz;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/pz;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/iz;->b(Ljava/lang/Class;)V

    sget-object v0, Landroidx/appcompat/view/menu/c1;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/g1;->a(Landroid/app/Activity;)V

    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/k1;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/iz;->c()Landroidx/appcompat/view/menu/iz;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/my;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/iz;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public final f(Landroid/app/Instrumentation;)Z
    .locals 9

    instance-of v0, p1, Landroidx/appcompat/view/menu/r3;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroidx/appcompat/view/menu/r3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    return v1

    :catch_0
    return v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4
.end method

.method public final h()Landroid/app/Instrumentation;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/t1;->i:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroidx/appcompat/view/menu/yu0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newActivity: className "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b8;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/b8;->l:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 0

    invoke-static {p3}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b8;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method
