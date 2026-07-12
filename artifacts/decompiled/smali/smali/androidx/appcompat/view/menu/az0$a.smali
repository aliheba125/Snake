.class public Landroidx/appcompat/view/menu/az0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/az0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/no0;

.field public b:Z

.field public c:[Landroidx/appcompat/view/menu/hr;

.field public d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/oc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/az0$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/az0$a;->d:I

    return-void
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/az0$a;)Landroidx/appcompat/view/menu/no0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/az0$a;->a:Landroidx/appcompat/view/menu/no0;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/az0;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/az0$a;->a:Landroidx/appcompat/view/menu/no0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->b(ZLjava/lang/Object;)V

    new-instance v0, Landroidx/appcompat/view/menu/nc1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/az0$a;->c:[Landroidx/appcompat/view/menu/hr;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/az0$a;->b:Z

    iget v3, p0, Landroidx/appcompat/view/menu/az0$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/view/menu/nc1;-><init>(Landroidx/appcompat/view/menu/az0$a;[Landroidx/appcompat/view/menu/hr;ZI)V

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/no0;)Landroidx/appcompat/view/menu/az0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/az0$a;->a:Landroidx/appcompat/view/menu/no0;

    return-object p0
.end method

.method public c(Z)Landroidx/appcompat/view/menu/az0$a;
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/az0$a;->b:Z

    return-object p0
.end method

.method public varargs d([Landroidx/appcompat/view/menu/hr;)Landroidx/appcompat/view/menu/az0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/az0$a;->c:[Landroidx/appcompat/view/menu/hr;

    return-object p0
.end method
