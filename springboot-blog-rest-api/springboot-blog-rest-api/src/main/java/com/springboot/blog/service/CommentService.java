package com.springboot.blog.service;

import com.springboot.blog.payload.CommentDTO;

import java.util.List;

public interface CommentService {
    CommentDTO createComment(Long postId, CommentDTO commentDTO);

    List<CommentDTO> getCommentByPostId(Long postId);

    CommentDTO getCommentById(Long commentId, Long postId);

    CommentDTO updateComment(Long commentId, Long postId , CommentDTO commentRequest);

    CommentDTO deleteComment(Long commentId, Long postId);


}
