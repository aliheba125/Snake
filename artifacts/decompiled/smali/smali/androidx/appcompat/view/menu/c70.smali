.class public abstract Landroidx/appcompat/view/menu/c70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/my0;

.field public static final b:Landroidx/appcompat/view/menu/my0;

.field public static final c:Landroidx/appcompat/view/menu/my0;

.field public static final d:Landroidx/appcompat/view/menu/my0;

.field public static final e:Landroidx/appcompat/view/menu/my0;

.field public static final f:Landroidx/appcompat/view/menu/zn;

.field public static final g:Landroidx/appcompat/view/menu/zn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->a:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->b:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->c:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->d:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->e:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/zn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/zn;-><init>(Z)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->f:Landroidx/appcompat/view/menu/zn;

    new-instance v0, Landroidx/appcompat/view/menu/zn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/zn;-><init>(Z)V

    sput-object v0, Landroidx/appcompat/view/menu/c70;->g:Landroidx/appcompat/view/menu/zn;

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->a:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->c:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic c()Landroidx/appcompat/view/menu/zn;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->g:Landroidx/appcompat/view/menu/zn;

    return-object v0
.end method

.method public static final synthetic d()Landroidx/appcompat/view/menu/zn;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->f:Landroidx/appcompat/view/menu/zn;

    return-object v0
.end method

.method public static final synthetic e()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->e:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic f()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/c70;->d:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/t40;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/u40;

    check-cast p0, Landroidx/appcompat/view/menu/t40;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/u40;-><init>(Landroidx/appcompat/view/menu/t40;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/u40;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/view/menu/u40;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/appcompat/view/menu/u40;->a:Landroidx/appcompat/view/menu/t40;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
