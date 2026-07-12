.class public abstract Landroidx/appcompat/view/menu/do0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/eo0;

.field public static final b:[Landroidx/appcompat/view/menu/k70;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/eo0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/eo0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/eo0;-><init>()V

    :goto_0
    sput-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/appcompat/view/menu/k70;

    sput-object v0, Landroidx/appcompat/view/menu/do0;->b:[Landroidx/appcompat/view/menu/k70;

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/ex;)Landroidx/appcompat/view/menu/n70;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/eo0;->a(Landroidx/appcompat/view/menu/ex;)Landroidx/appcompat/view/menu/n70;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/eo0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Landroidx/appcompat/view/menu/m70;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/eo0;->c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/appcompat/view/menu/m70;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroidx/appcompat/view/menu/qk0;)Landroidx/appcompat/view/menu/o70;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/eo0;->d(Landroidx/appcompat/view/menu/qk0;)Landroidx/appcompat/view/menu/o70;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroidx/appcompat/view/menu/dx;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/eo0;->e(Landroidx/appcompat/view/menu/dx;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroidx/appcompat/view/menu/g80;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do0;->a:Landroidx/appcompat/view/menu/eo0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/eo0;->f(Landroidx/appcompat/view/menu/g80;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
