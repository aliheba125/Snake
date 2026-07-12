.class public final Landroidx/appcompat/view/menu/ri;
.super Landroidx/appcompat/view/menu/l21;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ri$b;
    }
.end annotation


# instance fields
.field public m:Landroidx/appcompat/view/menu/dl0;

.field public n:Landroidx/appcompat/view/menu/dl0;

.field public o:Landroidx/appcompat/view/menu/dl0;

.field public p:Landroidx/appcompat/view/menu/dl0;

.field public q:Landroidx/appcompat/view/menu/dl0;

.field public r:Landroidx/appcompat/view/menu/dl0;

.field public s:Landroidx/appcompat/view/menu/dl0;

.field public t:Landroidx/appcompat/view/menu/dl0;

.field public u:Landroidx/appcompat/view/menu/dl0;

.field public v:Landroidx/appcompat/view/menu/dl0;

.field public w:Landroidx/appcompat/view/menu/dl0;

.field public x:Landroidx/appcompat/view/menu/dl0;

.field public y:Landroidx/appcompat/view/menu/dl0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/l21;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ri;->e(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ri$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ri;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static d()Landroidx/appcompat/view/menu/l21$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ri$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ri$b;-><init>(Landroidx/appcompat/view/menu/ri$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/gp;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/gp;

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/k21;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->y:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k21;

    return-object v0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Landroidx/appcompat/view/menu/sp;->a()Landroidx/appcompat/view/menu/sp;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/nm;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/dl0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ri;->m:Landroidx/appcompat/view/menu/dl0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/o50;->a(Ljava/lang/Object;)Landroidx/appcompat/view/menu/qq;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/s01;->a()Landroidx/appcompat/view/menu/s01;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/fi;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/fi;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->o:Landroidx/appcompat/view/menu/dl0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ed0;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/ed0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nm;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/dl0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->p:Landroidx/appcompat/view/menu/dl0;

    iget-object p1, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/jp;->a()Landroidx/appcompat/view/menu/jp;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/lp;->a()Landroidx/appcompat/view/menu/lp;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/hs0;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/hs0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->q:Landroidx/appcompat/view/menu/dl0;

    iget-object p1, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/kp;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/kp;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nm;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/dl0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->r:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/s01;->a()Landroidx/appcompat/view/menu/s01;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/mp;->a()Landroidx/appcompat/view/menu/mp;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/ri;->q:Landroidx/appcompat/view/menu/dl0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ri;->r:Landroidx/appcompat/view/menu/dl0;

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/fr0;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/fr0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nm;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/dl0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/yr0;->b(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/yr0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->t:Landroidx/appcompat/view/menu/dl0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/s01;->a()Landroidx/appcompat/view/menu/s01;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/as0;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/as0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->u:Landroidx/appcompat/view/menu/dl0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->m:Landroidx/appcompat/view/menu/dl0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri;->p:Landroidx/appcompat/view/menu/dl0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    invoke-static {v0, v1, p1, v2, v2}, Landroidx/appcompat/view/menu/zj;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/zj;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->v:Landroidx/appcompat/view/menu/dl0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->n:Landroidx/appcompat/view/menu/dl0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri;->p:Landroidx/appcompat/view/menu/dl0;

    iget-object v5, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ri;->u:Landroidx/appcompat/view/menu/dl0;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ri;->m:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object v6

    invoke-static {}, Landroidx/appcompat/view/menu/s01;->a()Landroidx/appcompat/view/menu/s01;

    move-result-object v7

    iget-object v8, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    move-object v2, v5

    invoke-static/range {v0 .. v8}, Landroidx/appcompat/view/menu/j41;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/j41;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->w:Landroidx/appcompat/view/menu/dl0;

    iget-object p1, p0, Landroidx/appcompat/view/menu/ri;->m:Landroidx/appcompat/view/menu/dl0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri;->s:Landroidx/appcompat/view/menu/dl0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri;->u:Landroidx/appcompat/view/menu/dl0;

    invoke-static {p1, v0, v1, v0}, Landroidx/appcompat/view/menu/na1;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/na1;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->x:Landroidx/appcompat/view/menu/dl0;

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/s01;->a()Landroidx/appcompat/view/menu/s01;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri;->v:Landroidx/appcompat/view/menu/dl0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ri;->w:Landroidx/appcompat/view/menu/dl0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ri;->x:Landroidx/appcompat/view/menu/dl0;

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/m21;->a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/m21;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nm;->a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/dl0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri;->y:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method
