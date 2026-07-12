.class public final Landroidx/appcompat/view/menu/kb;
.super Landroidx/appcompat/view/menu/s60;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/jb;


# instance fields
.field public final q:Landroidx/appcompat/view/menu/lb;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/lb;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s60;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kb;->q:Landroidx/appcompat/view/menu/lb;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b70;->P(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/kb;->w(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/kb;->q:Landroidx/appcompat/view/menu/lb;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/lb;->u(Landroidx/appcompat/view/menu/oh0;)V

    return-void
.end method
