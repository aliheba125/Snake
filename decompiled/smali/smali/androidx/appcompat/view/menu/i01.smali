.class public abstract Landroidx/appcompat/view/menu/i01;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/my0;

.field public static final b:Landroidx/appcompat/view/menu/tw;

.field public static final c:Landroidx/appcompat/view/menu/tw;

.field public static final d:Landroidx/appcompat/view/menu/tw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/i01;->a:Landroidx/appcompat/view/menu/my0;

    sget-object v0, Landroidx/appcompat/view/menu/i01$a;->n:Landroidx/appcompat/view/menu/i01$a;

    sput-object v0, Landroidx/appcompat/view/menu/i01;->b:Landroidx/appcompat/view/menu/tw;

    sget-object v0, Landroidx/appcompat/view/menu/i01$b;->n:Landroidx/appcompat/view/menu/i01$b;

    sput-object v0, Landroidx/appcompat/view/menu/i01;->c:Landroidx/appcompat/view/menu/tw;

    sget-object v0, Landroidx/appcompat/view/menu/i01$c;->n:Landroidx/appcompat/view/menu/i01$c;

    sput-object v0, Landroidx/appcompat/view/menu/i01;->d:Landroidx/appcompat/view/menu/tw;

    return-void
.end method

.method public static final a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/i01;->a:Landroidx/appcompat/view/menu/my0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/o01;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/o01;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o01;->b(Landroidx/appcompat/view/menu/kh;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Landroidx/appcompat/view/menu/i01;->c:Landroidx/appcompat/view/menu/tw;

    invoke-interface {p0, v0, v1}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/view/menu/h01;

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/view/menu/h01;->m(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Landroidx/appcompat/view/menu/kh;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/i01;->b:Landroidx/appcompat/view/menu/tw;

    invoke-interface {p0, v0, v1}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/i01;->b(Landroidx/appcompat/view/menu/kh;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Landroidx/appcompat/view/menu/i01;->a:Landroidx/appcompat/view/menu/my0;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/o01;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/o01;-><init>(Landroidx/appcompat/view/menu/kh;I)V

    sget-object p1, Landroidx/appcompat/view/menu/i01;->d:Landroidx/appcompat/view/menu/tw;

    invoke-interface {p0, v0, p1}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/h01;

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/h01;->C(Landroidx/appcompat/view/menu/kh;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
