.class public Landroidx/appcompat/view/menu/g31;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    iput p2, p0, Landroidx/appcompat/view/menu/g31;->a:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/g31;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/g31;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/g31;->a:I

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/g31;->a:I

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
