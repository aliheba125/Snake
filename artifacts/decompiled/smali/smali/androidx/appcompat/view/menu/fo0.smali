.class public final Landroidx/appcompat/view/menu/fo0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/fo0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/fo0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/fo0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/fo0;->a:Landroidx/appcompat/view/menu/fo0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Ljava/lang/String;Landroidx/appcompat/view/menu/dw;)Z
    .locals 3

    const-string v0, ""

    const-string v1, "block"

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchMethod: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassNotFound: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/dw;)Z
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public final b(Ljava/lang/reflect/Method;Landroidx/appcompat/view/menu/k70;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/appcompat/view/menu/i70;->a(Landroidx/appcompat/view/menu/k70;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/fo0;->c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/reflect/Method;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    return p1
.end method
