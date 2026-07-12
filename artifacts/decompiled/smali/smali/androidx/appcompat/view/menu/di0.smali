.class public Landroidx/appcompat/view/menu/di0;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/di0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/di0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->f([Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
