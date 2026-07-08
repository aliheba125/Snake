.class public Landroidx/appcompat/view/menu/y81$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/y81;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/y81;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/y81$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y81$b;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$b;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81;->b()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81;->c()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/y81$l;->b:Landroidx/appcompat/view/menu/y81;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$l;->a:Landroidx/appcompat/view/menu/y81;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$l;->a:Landroidx/appcompat/view/menu/y81;

    return-object v0
.end method

.method public b()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$l;->a:Landroidx/appcompat/view/menu/y81;

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$l;->a:Landroidx/appcompat/view/menu/y81;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/y81$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->n()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$l;->n()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/yf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/yf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->f()Landroidx/appcompat/view/menu/im;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$l;->f()Landroidx/appcompat/view/menu/im;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/yf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Landroidx/appcompat/view/menu/im;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(I)Landroidx/appcompat/view/menu/h50;
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object p1
.end method

.method public h()Landroidx/appcompat/view/menu/h50;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->f()Landroidx/appcompat/view/menu/im;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/yf0;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Landroidx/appcompat/view/menu/h50;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public j()Landroidx/appcompat/view/menu/h50;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/appcompat/view/menu/h50;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/h50;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    return-object v0
.end method

.method public m(IIII)Landroidx/appcompat/view/menu/y81;
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/y81$l;->b:Landroidx/appcompat/view/menu/y81;

    return-object p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p([Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    return-void
.end method

.method public q(Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    return-void
.end method

.method public r(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    return-void
.end method
