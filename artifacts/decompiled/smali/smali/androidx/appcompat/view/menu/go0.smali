.class public Landroidx/appcompat/view/menu/go0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/go0$d;,
        Landroidx/appcompat/view/menu/go0$e;,
        Landroidx/appcompat/view/menu/go0$b;,
        Landroidx/appcompat/view/menu/go0$a;,
        Landroidx/appcompat/view/menu/go0$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    return-void
.end method

.method public static A(Ljava/lang/reflect/Constructor;)Landroidx/appcompat/view/menu/go0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/go0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static B(Ljava/lang/reflect/Field;)Landroidx/appcompat/view/menu/go0$b;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/go0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0$b;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static C(Ljava/lang/reflect/Method;)Landroidx/appcompat/view/menu/go0$d;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/go0$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0$d;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static D(Ljava/lang/reflect/Method;)Landroidx/appcompat/view/menu/go0$e;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/go0$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0$e;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Class;)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameterTypes["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] == null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static varargs b([Ljava/lang/Class;)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameterTypes["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] == null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->r(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/go0;->B(Ljava/lang/reflect/Field;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs g(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/go0;->a([Ljava/lang/Class;)V

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->h(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :try_start_1
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/hz;->b(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :try_start_2
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p0
.end method

.method public static varargs l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/go0;->b([Ljava/lang/Class;)V

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/go0;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :try_start_1
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/hz;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->f(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p0
.end method

.method public static varargs q(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->g(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static varargs s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/go0;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/go0;->s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_0

    array-length p2, p2

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->C(Ljava/lang/reflect/Method;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/go0;

    invoke-static {p0}, Landroidx/appcompat/view/menu/go0;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;
    .locals 5

    const-string v0, "\\$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/go0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go0;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/os/Binder;

    if-ne v3, v4, :cond_3

    new-instance p0, Landroidx/appcompat/view/menu/go0;

    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/go0;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/appcompat/view/menu/go0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/go0;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public static varargs y(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/go0;->s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_0

    array-length p2, p2

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/go0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->D(Ljava/lang/reflect/Method;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/go0;->q(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/go0;->A(Ljava/lang/reflect/Constructor;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/go0;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/go0;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object p1

    return-object p1
.end method

.method public varargs z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/go0;->y(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object p1

    return-object p1
.end method
