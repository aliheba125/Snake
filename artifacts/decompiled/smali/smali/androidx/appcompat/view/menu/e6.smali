.class public final Landroidx/appcompat/view/menu/e6;
.super Landroidx/appcompat/view/menu/ai0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e6$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/zh0$a;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/zh0$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ai0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6;->b:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/e6;->c:Landroidx/appcompat/view/menu/zh0$a;

    iput-object p3, p0, Landroidx/appcompat/view/menu/e6;->d:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/e6;->e:Ljava/lang/String;

    iput-wide p5, p0, Landroidx/appcompat/view/menu/e6;->f:J

    iput-wide p7, p0, Landroidx/appcompat/view/menu/e6;->g:J

    iput-object p9, p0, Landroidx/appcompat/view/menu/e6;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/zh0$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroidx/appcompat/view/menu/e6$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Landroidx/appcompat/view/menu/e6;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/zh0$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/e6;->f:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/ai0;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Landroidx/appcompat/view/menu/ai0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->c:Landroidx/appcompat/view/menu/zh0$a;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->g()Landroidx/appcompat/view/menu/zh0$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v3, p0, Landroidx/appcompat/view/menu/e6;->f:J

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Landroidx/appcompat/view/menu/e6;->g:J

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->e()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroidx/appcompat/view/menu/zh0$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->c:Landroidx/appcompat/view/menu/zh0$a;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/e6;->g:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/e6;->c:Landroidx/appcompat/view/menu/zh0$a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/e6;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/e6;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-wide v3, p0, Landroidx/appcompat/view/menu/e6;->f:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-wide v3, p0, Landroidx/appcompat/view/menu/e6;->g:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/e6;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    return v0
.end method

.method public n()Landroidx/appcompat/view/menu/ai0$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/e6$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/e6$b;-><init>(Landroidx/appcompat/view/menu/ai0;Landroidx/appcompat/view/menu/e6$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->c:Landroidx/appcompat/view/menu/zh0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/e6;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/e6;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
