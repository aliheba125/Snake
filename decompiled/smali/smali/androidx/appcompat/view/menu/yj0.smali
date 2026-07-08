.class public Landroidx/appcompat/view/menu/yj0;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final l:Landroid/content/pm/ApplicationInfo;

.field public final m:Ljava/lang/String;

.field public n:Landroidx/appcompat/view/menu/h00;

.field public o:Landroid/os/IInterface;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yj0;->v:Landroid/os/ConditionVariable;

    iput-object p1, p0, Landroidx/appcompat/view/menu/yj0;->l:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p3;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/p3;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/p3;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/yj0;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroidx/appcompat/view/menu/p3;->m:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->s:I

    iput v1, v0, Landroidx/appcompat/view/menu/p3;->o:I

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->r:I

    iput v1, v0, Landroidx/appcompat/view/menu/p3;->p:I

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->p:I

    iput v1, v0, Landroidx/appcompat/view/menu/p3;->q:I

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->t:I

    iput v1, v0, Landroidx/appcompat/view/menu/p3;->s:I

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->u:I

    iput v1, v0, Landroidx/appcompat/view/menu/p3;->r:I

    iput-object p0, v0, Landroidx/appcompat/view/menu/p3;->t:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yj0;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/kl0;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/view/menu/yj0;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroidx/appcompat/view/menu/yj0;->q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
