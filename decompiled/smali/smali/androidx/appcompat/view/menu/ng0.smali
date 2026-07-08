.class public abstract Landroidx/appcompat/view/menu/ng0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/fw;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ng0$a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/ng0$a;-><init>(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)V

    return-object v0
.end method

.method public static final b(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/appcompat/view/menu/ng0;->c(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;)Landroidx/appcompat/view/menu/k31;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Landroidx/appcompat/view/menu/rh;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final c(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;)Landroidx/appcompat/view/menu/k31;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, Landroidx/appcompat/view/menu/k31;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in undelivered element handler for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/appcompat/view/menu/k31;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;ILjava/lang/Object;)Landroidx/appcompat/view/menu/k31;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ng0;->c(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;)Landroidx/appcompat/view/menu/k31;

    move-result-object p0

    return-object p0
.end method
