.class public abstract Landroidx/appcompat/view/menu/ta0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;Ljava/lang/String;)Landroidx/appcompat/view/menu/rd0;
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/ta0;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/rd0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/rd0;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    throw p0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ta0;->d()Ljava/lang/Void;

    new-instance p0, Landroidx/appcompat/view/menu/d80;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/d80;-><init>()V

    throw p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Landroidx/appcompat/view/menu/rd0;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ta0;->a(Ljava/lang/Throwable;Ljava/lang/String;)Landroidx/appcompat/view/menu/rd0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/appcompat/view/menu/qa0;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qa0;->F()Landroidx/appcompat/view/menu/qa0;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/view/menu/rd0;

    return p0
.end method

.method public static final d()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Landroidx/appcompat/view/menu/ra0;Ljava/util/List;)Landroidx/appcompat/view/menu/qa0;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/ra0;->b(Ljava/util/List;)Landroidx/appcompat/view/menu/qa0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/appcompat/view/menu/ra0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/ta0;->a(Ljava/lang/Throwable;Ljava/lang/String;)Landroidx/appcompat/view/menu/rd0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
